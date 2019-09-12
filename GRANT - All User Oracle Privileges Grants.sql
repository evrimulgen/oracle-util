SELECT 'GRANT ' || T.PRIVILEGE || ' TO ' || T.GRANTEE || ';'
  FROM DBA_SYS_PRIVS T
 WHERE GRANTEE LIKE 'SCHEMA'
UNION
  SELECT 'GRANT ' || R.GRANTED_ROLE || ' TO ' || R.GRANTEE || ';'
    FROM DBA_ROLE_PRIVS R
   WHERE GRANTEE LIKE 'SCHEMA';
