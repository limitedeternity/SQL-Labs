select concat(фамилия, char(32), substring(имя, 1, 1), char(46)) as Автор, регион
from авторы
where регион in (
	select регион
	from издательства
	where издательство = 'Деловой Мир'
)

select concat(фамилия, char(32), substring(имя, 1, 1), char(46)) as Автор, регион
from авторы
where регион in (
	select регион
	from издательства
	where издательство = 'Наука'
)
