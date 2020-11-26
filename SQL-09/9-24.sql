select издательство
from издательства
where ид_изд in (select книги.издательство from книги where жанр = 'история')

select издательство
from издательства
where ид_изд not in (select книги.издательство from книги where жанр = 'история')
