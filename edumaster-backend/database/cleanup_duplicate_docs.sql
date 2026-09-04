-- ============================================================
-- Script dọn dẹp student_documents bị nhân bản
-- Chạy 1 lần sau khi deploy bản cập nhật mới
-- Mục tiêu: Giữ lại 1 bản ghi cũ nhất cho mỗi (url, id_number)
-- ============================================================

-- Bước 0: Xem trước bao nhiêu bản ghi trùng sẽ bị xóa
SELECT
  COUNT(*) AS total_records,
  COUNT(*) - COUNT(DISTINCT url) AS estimated_duplicates
FROM student_documents;

-- Bước 1: Cập nhật id_number cho các bản ghi cũ (từ bảng students)
-- để đảm bảo mọi document có CCCD trước khi dọn dẹp
UPDATE student_documents sd
SET id_number = s.id_number
FROM students_student_documents_lnk lnk
JOIN students s ON s.id = lnk.student_id
WHERE lnk.student_document_id = sd.id
  AND (sd.id_number IS NULL OR sd.id_number = '');

-- Bước 2: Xóa các bản sao thừa — chỉ giữ bản ghi CŨ NHẤT (id nhỏ nhất) cho mỗi URL + CCCD
DELETE FROM student_documents
WHERE id NOT IN (
  SELECT MIN(id)
  FROM student_documents
  WHERE url IS NOT NULL AND url != ''
  GROUP BY url, COALESCE(id_number, '')
);

-- Bước 3: Xác nhận kết quả sau khi dọn
SELECT
  COUNT(*) AS remaining_records
FROM student_documents;

-- ============================================================
-- LƯU Ý: Chạy bước 0 trước để xem preview
-- Sau đó chạy bước 1 rồi bước 2
-- KHÔNG chạy tất cả cùng lúc lần đầu
-- ============================================================
