select sum(продажи) as [Общий объем продаж в 2000г.]
from Книги.dbo.книги
where year([дата издания]) = 2000
