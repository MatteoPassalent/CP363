SELECT CONSTRAINT_NAME, UPDATE_RULE, DELETE_RULE, TABLE_NAME, REFERENCED_TABLE_NAME
FROM information_schema.REFERENTIAL_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'dcris'
ORDER BY CONSTRAINT_NAME, TABLE_NAME, REFERENCED_TABLE_NAME