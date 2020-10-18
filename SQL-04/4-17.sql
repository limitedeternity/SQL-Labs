select цена, avg(продажи)
from Книги.dbo.книги
where цена is not null
group by цена
