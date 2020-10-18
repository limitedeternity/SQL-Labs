select жанр,
  sum(продажи) as [sum(продажи)],
  avg(продажи) as [avg(продажи)],
  count(продажи) as [count(продажи)]  
from Книги.dbo.книги
where цена >= 13
group by жанр
order by [sum(продажи)] desc
