select ид_кни, название, цена
from книги
where цена > (
	select max(цена)
	from книги
	where жанр = 'биография'
)
