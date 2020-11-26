select max(t.Сумма) as [Максимальное кол-во книг]
from (select count(ид_кни) as Сумма from [книги-авторы] group by ид_авт) t
