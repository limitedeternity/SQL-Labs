select жанр, название, цена
from книги x
where цена > (select avg(цена) from книги y where y.жанр = x.жанр)
