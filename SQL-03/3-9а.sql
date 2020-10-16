select 'Продано ' + cast(продажи as varchar) + ' экземпляров книги ' + ид_кни as [Продажи книг по истории]
from Книги.dbo.книги
where жанр = 'история'
order by продажи desc
