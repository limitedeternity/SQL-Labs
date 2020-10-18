select жанр,
  sum(продажи) as [sum(продажи)],
  avg(продажи) as [avg(продажи)],
  count(продажи) as [count(продажи)]  
from Книги.dbo.книги
group by жанр
order by жанр asc
