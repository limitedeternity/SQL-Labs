select жанр,
       sum(продажи) as [Сумма продаж в издательствах "И01" и "И03"],
	   avg(цена) as [Средняя цена]
from Книги.dbo.книги
where издательство in ('И01', 'И03')
group by жанр
having sum(продажи) > 10000 and avg(цена) < 25
order by жанр asc
