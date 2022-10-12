CREATE [OR REPLACE] FUNCTION scheme.procedure_name ()
	[RETURNS] 
	LANGUAGE 
	VOLATILE 
AS
$$
[<<Метка>>]
[DECLARE]
BEGIN
END;
$$	
	

|OR REPLACE Помагает обновлять функцию	
|(имя_аргумента тип_аргумента) Режим аргумента --(default) дает необязательный эоемент
	|(по дефолту IN--входной)
	|OUT 
	|INOUT
	|VARIADIC--переменный
RETURNS --тип результата 
	|VOID --ничего не возвращать
	|SETOF --возвращает множество, а не едингственный элемент
	|RECORD --если выходных параметров несколько, либо тип единственного выходного параметра
	|TABLE (имя_столбца тип_солбца)
LANGUAGE --имя_языка
	|sql
	|plpgsql
	|c
	|internal
default VOLATILE
	|IMMUTABLE--постоянная функция 
	|STABLE--стабильная функция 
	|VOLATILE--изменчивая функция 
DECLARE --объявления(переменные)
BEGIN --
END --финальный, завершающий тело функции не требует';', в ост. случаях необходимо
<<Метка>>-- для определения внешнего блока
	 /*
	CREATE FUNCTION somefunc() RETURNS integer AS $$
	<< outerblock >>
	DECLARE
	quantity integer := 30;
	BEGIN
	RAISE NOTICE 'Сейчас quantity = %', quantity;  -- Выводится 30
	quantity := 50;
	--
	-- Вложенный блок
	--
	DECLARE
	quantity integer := 80;
	BEGIN
	RAISE NOTICE 'Сейчас quantity = %', quantity;  -- Выводится 80
	RAISE NOTICE 'Во внешнем блоке quantity = %', outerblock.quantity;  -- Выводится 50
	END;

	RAISE NOTICE 'Сейчас quantity = %', quantity;  -- Выводится 50

	RETURN quantity;
	END;
	$$ LANGUAGE plpgsql;
	*/
