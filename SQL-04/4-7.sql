select count(ид_авт) as [count(ид_авт)]
from Книги.dbo.[книги-авторы];

select distinct count(ид_авт) as [distinct count(ид_авт)]
from Книги.dbo.[книги-авторы];

select count(distinct ид_авт) as [count(distinct ид_авт)]
from Книги.dbo.[книги-авторы];
