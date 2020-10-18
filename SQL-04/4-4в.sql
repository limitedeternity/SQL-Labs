select название, продажи
from Книги.dbo.книги
where продажи > (select avg(продажи) from Книги.dbo.книги)
order by продажи desc
