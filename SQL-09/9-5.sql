select ид_кни, название, цена
from книги
where цена = (select MAX(цена) from книги)
