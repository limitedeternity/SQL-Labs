select sum(книги.цена * книги.продажи * гонорары.процент_гонорара) as [Сумма гонораров], 
sum(гонорары.аванс) as [Сумма авансов], 
sum(книги.цена * книги.продажи * гонорары.процент_гонорара - гонорары.аванс) as [Осталось выплатить]
from книги
inner join гонорары on книги.ид_кни = гонорары.ид_кни
