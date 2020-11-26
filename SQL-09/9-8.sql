select издательство
from издательства
where ид_изд in (select ид_изд from книги where жанр = 'история')
