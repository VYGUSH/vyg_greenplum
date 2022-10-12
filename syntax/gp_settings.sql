--------------------------------------------TOXIC------------------------------------------------
SELECT pg_cancel_backend(0);

SELECT pg_terminate_backend(0);

SELECT pid from pg_catalog.pg_stat_activity
WHERE usename ='0'
AND state = 'active'
AND query NOT LIKE '%pg_catalog.pg_stat_activity%';
-------------------------------------------TOXIC------------------------------------------------
-------------------------------------------SPACE SCHEME-----------------------------------------
SELECT nspname, pg_size_pretty(sum(pg_relation_size(C.oid))) AS "size"
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname IN ( 'scheme','scheme')
GROUP BY 1
-------------------------------------------SPACE SCHEME-----------------------------------------