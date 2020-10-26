select город
from Книги.dbo.авторы
except
select город
from Книги.dbo.издательства
