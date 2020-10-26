select (имя + ' ' + фамилия) as имя
from Книги.dbo.авторы
union
select издательство as имя
from Книги.dbo.издательства
order by 1 asc
