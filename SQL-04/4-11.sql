select жанр,
  sum(продажи) as [sum(продажи)],
  count(продажи) as [count(продажи)],
  count(*) as [count(*)],
  sum(продажи) / count(продажи) as [sum(продажи) / count(продажи)],
  sum(продажи) / count(*) as [sum(продажи) / count(*)],
  avg(продажи) as [avg(продажи)]
from Книги.dbo.книги
group by жанр
