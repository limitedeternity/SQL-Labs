select count(цена) as [count(цена)], sum(цена) as [sum(цена)]
from Книги.dbo.книги;

select count(цена) as [count(цена)], sum(distinct цена) as [sum(distinct цена)]
from Книги.dbo.книги;

select count(distinct цена) as [count(distinct цена)], sum(цена) as [sum(цена)]
from Книги.dbo.книги;

select count(distinct цена) as [count(distinct цена)], sum(distinct цена) as [sum(distinct цена)]
from Книги.dbo.книги;
