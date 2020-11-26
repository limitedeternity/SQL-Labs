select distinct [книги-авторы].ид_авт, авторы.имя, авторы.фамилия
from [книги-авторы]
inner join авторы on [книги-авторы].ид_авт = авторы.ид_авт
inner join книги on [книги-авторы].ид_кни = книги.ид_кни
where книги.издательство in (select ид_изд from издательства where издательство = 'Небо Кубани')
