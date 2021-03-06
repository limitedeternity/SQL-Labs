select жанр,
       count(цена) as [Количество книг],
	   avg(цена * продажи) as [Средняя выручка]
from Книги.dbo.книги
group by жанр
having avg(цена * продажи) <= 1000000
order by [Количество книг] asc
