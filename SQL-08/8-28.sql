select книги.название, гонорары.аванс
from книги
inner join гонорары on книги.ид_кни = гонорары.ид_кни
order by 1 asc
