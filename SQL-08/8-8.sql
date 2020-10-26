select город
from Книги.dbo.авторы
intersect
select город
from Книги.dbo.издательства
