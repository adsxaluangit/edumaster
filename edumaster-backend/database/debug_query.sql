SELECT s.id, s.full_name, s.group, s.class_code, c.name as class_name, c.document_id as class_doc_id, s.is_approved
FROM students s
LEFT JOIN students_school_class_lnk lnk ON s.id = lnk.student_id
LEFT JOIN classes c ON c.id = lnk.school_class_id
LIMIT 15;
