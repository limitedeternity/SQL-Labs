select ид_кни, название, жанр, продажи
from книги a
where продажи >= (select AVG(продажи) from книги b where a.жанр = b.жанр)
