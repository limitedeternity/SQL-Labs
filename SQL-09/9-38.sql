select ид_кни, название
from книги
where жанр <> 'фантастика' and цена < any (select цена from книги where жанр = 'фантастика')
