select 'Продано ' + cast(продажи as varchar) + ' экземпляров книги ' + ид_кни as [Продажи книг в жанре фантастика]
from Книги.dbo.книги
where жанр = 'фантастика' and продажи is not null
order by продажи desc
