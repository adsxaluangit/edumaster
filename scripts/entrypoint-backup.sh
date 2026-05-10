#!/bin/sh
# ============================================================
# EduMaster - Cron Entrypoint
# Thiết lập cron job và chạy backup service
# ============================================================

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 🚀 Khởi động Backup Service..."
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 📅 Lịch backup: Mỗi ngày lúc 02:00 AM"

# Truyền biến môi trường vào cron environment
printenv | grep -E "DATABASE_|PGPASSWORD" > /etc/environment

# Tạo cron job: backup lúc 2:00 AM mỗi ngày
echo "0 2 * * * . /etc/environment; /backup.sh >> /var/log/backup.log 2>&1" > /etc/crontabs/root

# Chạy backup ngay lần đầu khi khởi động
echo "[$(date '+%Y-%m-%d %H:%M:%S')] ⚡ Chạy backup lần đầu ngay bây giờ..."
/backup.sh

# Khởi động cron daemon
echo "[$(date '+%Y-%m-%d %H:%M:%S')] ✅ Cron daemon đang chạy - backup tiếp theo lúc 02:00 AM"
crond -f -l 2
