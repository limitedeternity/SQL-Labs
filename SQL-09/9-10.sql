select ид_кни, название, цена, (select avg(цена) from книги) as [Средняя цена],
       abs(цена - (select avg(цена) from книги)) as Разница
from книги
where жанр = 'история'
