#!/bin/sh
# ============================================================
# EduMaster - Auto Backup Script
# Chạy tự động mỗi ngày lúc 2:00 AM
# Giữ lại tối đa 7 bản backup gần nhất
# ============================================================

BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="edumaster_backup_${TIMESTAMP}.sql"
KEEP_DAYS=7

echo "[$(date '+%Y-%m-%d %H:%M:%S')] ===== Bắt đầu backup ====="

# Tạo thư mục nếu chưa có
mkdir -p "$BACKUP_DIR"

# Dump database
pg_dump \
  -h "$DATABASE_HOST" \
  -p "$DATABASE_PORT" \
  -U "$DATABASE_USERNAME" \
  -d "$DATABASE_NAME" \
  --no-password \
  -F p \
  -f "$BACKUP_DIR/$FILENAME"

if [ $? -eq 0 ]; then
  SIZE=$(du -sh "$BACKUP_DIR/$FILENAME" | cut -f1)
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ✅ Backup thành công: $FILENAME ($SIZE)"
else
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ❌ Backup THẤT BẠI!"
  exit 1
fi

# Xóa các bản backup cũ hơn KEEP_DAYS ngày
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 🗑️  Dọn backup cũ hơn ${KEEP_DAYS} ngày..."
find "$BACKUP_DIR" -name "edumaster_backup_*.sql" -mtime +${KEEP_DAYS} -delete

# Liệt kê các bản backup hiện có
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 📁 Danh sách backup hiện có:"
ls -lh "$BACKUP_DIR"/edumaster_backup_*.sql 2>/dev/null | awk '{print "   " $NF " - " $5}'

echo "[$(date '+%Y-%m-%d %H:%M:%S')] ===== Hoàn thành ====="
