select 'автор' as тип,
       count(*) as количество
from Книги.dbo.авторы
where регион = 'Москва'
union
select 'издательство' as тип,
       count(*) as количество
from Книги.dbo.издательства
where регион = 'Москва'
union
select 'книга' as тип,
       count(*) as количество
from Книги.dbo.книги
inner join Книги.dbo.издательства on Книги.dbo.книги.издательство = Книги.dbo.издательства.ид_изд
where регион = 'Москва'
order by 1 asc, 2 asc
