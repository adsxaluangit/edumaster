SELECT 
  id_number AS cccd,
  full_name,
  COUNT(*) AS so_student_records,
  COUNT(DISTINCT photo) AS so_anh_khac_nhau,
  string_agg(DISTINCT "group", ', ') AS cac_lop
FROM students
WHERE id_number IS NOT NULL AND id_number != ''
GROUP BY id_number, full_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
LIMIT 8;
