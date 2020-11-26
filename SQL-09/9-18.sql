select ид_авт, книги.ид_кни, название, продажи
from книги
inner join [книги-авторы] on [книги-авторы].ид_кни = книги.ид_кни
where продажи > (select avg(продажи) from книги)

select x.ид_авт, x.ид_кни
from [книги-авторы] x
where x.ид_кни in (select книги.ид_кни from книги where продажи > (select avg(продажи) from книги))
