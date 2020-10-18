select издательство, жанр, count(ид_кни) as [Количество книг]
from Книги.dbo.книги
group by издательство, жанр
having count(ид_кни) > 1
order by 1 asc, 3 desc
