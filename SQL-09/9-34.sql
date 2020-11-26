select ид_кни, название
from книги
where жанр <> 'фантастика' and цена < all (select цена from книги where жанр = 'фантастика' and цена is not null)
