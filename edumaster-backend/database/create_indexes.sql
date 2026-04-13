CREATE INDEX CONCURRENTLY IF NOT EXISTS students_full_name_btree_idx ON students (full_name);
CREATE INDEX CONCURRENTLY IF NOT EXISTS students_id_number_idx ON students (id_number);
CREATE INDEX CONCURRENTLY IF NOT EXISTS students_created_at_idx ON students (created_at DESC);
CREATE INDEX CONCURRENTLY IF NOT EXISTS students_group_idx ON students ("group");
CREATE INDEX CONCURRENTLY IF NOT EXISTS class_decisions_type_idx ON class_decisions (type);
