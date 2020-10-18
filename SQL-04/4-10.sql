select регион, count(регион) as [count(регион)], count(*) as [count(*)]
from Книги.dbo.издательства
group by регион
