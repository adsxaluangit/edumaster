/**
 * student-document controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::student-document.student-document', ({ strapi }) => ({

  // GET /api/student-documents/by-id-number?id_number=<cccd>
  // Trả về tất cả tài liệu thuộc CCCD này — dùng chung cho mọi lớp của 1 học viên
  async findByIdNumber(ctx) {
    try {
      const { id_number } = ctx.query as any;

      if (!id_number) {
        return ctx.badRequest('Thiếu tham số id_number');
      }

      const knex = strapi.db.connection;

      const rows = await knex('student_documents as sd')
        .where('sd.id_number', id_number)
        .select(
          'sd.id',
          'sd.document_id as documentId',
          'sd.name',
          'sd.url',
          'sd.type',
          'sd.date',
          'sd.id_number',
          'sd.created_at as createdAt'
        )
        .orderBy('sd.created_at', 'asc');

      return {
        data: rows.map((r: any) => ({
          id: r.documentId || r.id,
          name: r.name,
          url: r.url,
          type: r.type,
          date: r.date || (r.createdAt ? new Date(r.createdAt).toLocaleDateString('vi-VN') : ''),
          id_number: r.id_number,
        }))
      };
    } catch (err: any) {
      console.error('[findByIdNumber]', err);
      ctx.throw(500, err.message || 'Internal Server Error');
    }
  }
}));
