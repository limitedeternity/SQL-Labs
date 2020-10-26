select 'автор' as тип,
       (имя + ' ' + фамилия) as имя,
	   регион
from Книги.dbo.авторы
where регион = 'Москва'
union
select 'издательство' as тип,
       издательство as имя,
	   регион
from Книги.dbo.издательства
where регион = 'Москва'
order by 1 asc, 2 asc
