select count(ид_кни) as [count(ид_кни)],
       count(цена) as [count(цена)],
	   count(*) as [count(*)]
from Книги.dbo.книги;

select count(ид_кни) as [count(ид_кни)],
       count(цена) as [count(цена)],
	   count(*) as [count(*)]
from Книги.dbo.книги
where цена is not null;

select count(ид_кни) as [count(ид_кни)],
       count(цена) as [count(цена)],
	   count(*) as [count(*)]
from Книги.dbo.книги
where цена is null;

