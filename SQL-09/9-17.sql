select ид_кни, название, продажи
from книги
where продажи > (select avg(продажи) from книги)
