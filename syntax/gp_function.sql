CREATE OR REPLACE FUNCTION scheme.name_func()
RETURNS void
LANGUAGE plpgsql
VOLATILE
AS $$

declare

text_1      text    :=  'text';
text_2      text;
text_proc   text;
cntg        bigint  default 0;

begin

---

PERFORM ;-- запуск процедуры
SELECT 'text2' INTO text_2; --запись в переменную [FROM scheme.table]--значение из таблицы
SELECT scheme.proc_name([значения(Переменные)]) INTO text_proc;
EXECUTE 'SELECT count(1) FROM scheme.'||table_ INTO cnte;
descr := 'table=count_rows: '||espd_table||' ['||cnte::TEXT||']';

EXECUTE FORMAT (query_text);

---

if условия
then если 1
else если 0
end if;

---

EXECUTE (SELECT FROM scheme.table) -- на выход 1 - есть данные, 0 - нет данных

- -----------------------Обработчик ошибок---------------------
exception
when others then
perform scheme.proc_name('ERROR', sqlstate, sqlerrm);
------------------------Обработчик ошибок---------------------

end;
$$
EXECUTE ON ANY;