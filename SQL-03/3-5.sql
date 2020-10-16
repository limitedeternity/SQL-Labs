select название, продажи * цена as выручка
from Книги.dbo.книги
where жанр = 'история'
order by выручка desc
