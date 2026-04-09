/**
 * backup controller — Executes pg_dump and saves to /opt/app/database/
 */

import { spawn } from 'child_process';
import * as fs from 'fs';
import * as path from 'path';

export default {
  async create(ctx) {
    // --- Auth check: only ADMIN role ---
    const user = ctx.state?.user;
    if (!user) {
      return ctx.unauthorized('Bạn cần đăng nhập để thực hiện backup.');
    }

    // Check for admin role (Strapi users-permissions role)
    const userRole = user?.role?.name?.toLowerCase() || '';
    const allowedRoles = ['admin', 'administrator', 'manager'];
    if (!allowedRoles.includes(userRole)) {
      return ctx.forbidden('Chỉ Admin hoặc Manager mới có quyền backup cơ sở dữ liệu.');
    }

    // --- Build filename ---
    const now = new Date();
    const pad = (n: number) => String(n).padStart(2, '0');
    const dd = pad(now.getDate());
    const mm = pad(now.getMonth() + 1);
    const yyyy = now.getFullYear();
    const HH = pad(now.getHours());
    const min = pad(now.getMinutes());
    const ss = pad(now.getSeconds());
    const filename = `backup_${dd}${mm}${yyyy}_${HH}${min}${ss}.sql`;

    // --- Output directory (mounted volume) ---
    const outputDir = '/opt/app/database';
    const outputPath = path.join(outputDir, filename);

    // Ensure directory exists
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }

    // --- Read DB config from environment ---
    const dbHost = process.env.DATABASE_HOST || 'db';
    const dbPort = process.env.DATABASE_PORT || '5432';
    const dbName = process.env.DATABASE_NAME || 'edumaster';
    const dbUser = process.env.DATABASE_USERNAME || 'postgres';
    const dbPassword = process.env.DATABASE_PASSWORD || '123456';

    return new Promise((resolve) => {
      const env = { ...process.env, PGPASSWORD: dbPassword };

      const pgDump = spawn(
        'pg_dump',
        [
          '-h', dbHost,
          '-p', dbPort,
          '-U', dbUser,
          '-d', dbName,
          '--no-owner',
          '--no-acl',
          '-f', outputPath,
        ],
        { env }
      );

      let errorOutput = '';
      pgDump.stderr.on('data', (data) => {
        errorOutput += data.toString();
      });

      pgDump.on('close', (code) => {
        if (code === 0) {
          const stats = fs.statSync(outputPath);
          const sizeKB = Math.round(stats.size / 1024);
          strapi.log.info(`[Backup] Success: ${filename} (${sizeKB} KB)`);
          ctx.body = {
            success: true,
            filename,
            sizeKB,
            message: `Backup thành công! File: ${filename} (${sizeKB} KB)`,
          };
          resolve(null);
        } else {
          strapi.log.error(`[Backup] pg_dump failed (code ${code}): ${errorOutput}`);
          ctx.status = 500;
          ctx.body = {
            success: false,
            error: `pg_dump thất bại (exit code ${code})`,
            detail: errorOutput,
          };
          resolve(null);
        }
      });

      pgDump.on('error', (err) => {
        strapi.log.error(`[Backup] Spawn error: ${err.message}`);
        ctx.status = 500;
        ctx.body = {
          success: false,
          error: `Không thể chạy pg_dump: ${err.message}`,
        };
        resolve(null);
      });
    });
  },
};
