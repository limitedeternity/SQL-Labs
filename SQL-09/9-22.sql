select жанр, название, продажи
from книги x
where продажи < (select max(продажи) from книги y where y.жанр = x.жанр)
