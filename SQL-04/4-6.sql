select count(*) as [count(*)],
	   count(цена) as [count(цена)],
	   sum(цена) as [sum(цена)],
	   avg(цена) as [avg(цена)]
from Книги.dbo.книги;

select count(*) as [count(*)],
       count(distinct цена) as [count(distinct)],
       sum(distinct цена) as [sum(distinct)],
	   avg(distinct цена) as [avg(distinct)]
from Книги.dbo.книги;
