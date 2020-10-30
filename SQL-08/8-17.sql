select c1.ид_кни, c1.продажи, c2.ид_кни as [Продается лучше], c2.продажи as [Лучшие продажи]
from (select * from книги where жанр = 'история') as c1 join (select * from книги where жанр = 'история') as c2
on c2.продажи > c1.продажи
order by 1, 4
