select издательство, жанр, count(продажи) as [Количество книг]
from Книги.dbo.книги
group by издательство, жанр
order by 1 asc, 3 desc, 2 desc
