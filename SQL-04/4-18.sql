select ид_авт, count(ид_кни) as [Количество книг]
from Книги.dbo.[книги-авторы]
group by ид_авт
having count(ид_кни) >= 3
