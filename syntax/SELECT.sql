case when '' then '' else '' end 
CAST ( "expression" AS "target_type" ) --- CAST ('100' AS INTEGER)
"expression"::"type" --- '100'::INTEGER
TRIM -- string откуда, character что, по ум пробел
TRIM(LEADING "character" FROM "string"); -- LTRIM(string,character) ---Из начала строки
TRIM(TRAILING "character" FROM "string"); -- RTRIM(string,character) ---Из конца строки 
TRIM(BOTH "character" FROM "string"); -- BTRIM(string,character) ---Из начала и конца
NULLIF("COLUMN1","COLUMN");--ЕСЛИ НЕ РАВНЫ, то NULL
LENGTH 
SUBSTR



