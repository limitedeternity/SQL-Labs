select avg(продажи) as [AVG(продажи)],
       sum(продажи) as [SUM(продажи)]
from Книги.dbo.книги
where жанр = 'бизнес'
