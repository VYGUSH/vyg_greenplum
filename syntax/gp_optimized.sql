EXPLAIN ANALYSE --Выполнение, после предоставление анализа по запросу
EXPLAIN --План запроса

- ------------------------------------------------------------При создании таблицы------------------------------------------------
WITH (
appendonly=true,
orientation=row,
compresstype=zstd
)
DISTRIBUTED BY (column)
PARTITION BY RANGE(column)
(
START ('2020-01-01'::date) END ('2023-12-31'::date) EVERY ('1 mon'::interval month) WITH (appendonly='true', orientation='row', compresstype=zstd),
START ('2021-01-01'::date) END ('2023-01-01'::date) EVERY ('1 mon'::interval) WITH (appendonly='true', compresstype=zstd, compresslevel='1')
);
-------------------------------------------------------------При создании таблицы------------------------------------------------