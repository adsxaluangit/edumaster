DO $$
DECLARE
  r RECORD;
  new_perm_id INTEGER;
BEGIN
  FOR r IN
    SELECT DISTINCT lnk.role_id
    FROM up_permissions p
    JOIN up_permissions_role_lnk lnk ON lnk.permission_id = p.id
    WHERE p.action = 'api::student-document.student-document.find'
  LOOP
    INSERT INTO up_permissions (document_id, action, created_at, updated_at, published_at)
    VALUES (gen_random_uuid()::text, 'api::student-document.student-document.findByIdNumber', NOW(), NOW(), NOW())
    RETURNING id INTO new_perm_id;
    
    INSERT INTO up_permissions_role_lnk (permission_id, role_id)
    VALUES (new_perm_id, r.role_id)
    ON CONFLICT DO NOTHING;
    
    RAISE NOTICE 'Added findByIdNumber for role_id=%', r.role_id;
  END LOOP;
END;
$$;
SELECT 'Permission added successfully!' AS result;
