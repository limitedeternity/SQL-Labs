select x.ид_кни, x.продажи, x.сумма + isnull(sum(y.сумма), 0) as [Накопленная сумма]
from (
	select isnull(sum(продажи), 0) as сумма, ид_кни, продажи
    from книги
    group by ид_кни, продажи
) as x
left outer join
(
    select isnull(sum(продажи), 0) as сумма, ид_кни, продажи
    from книги
    group by ид_кни, продажи
) as y 
on y.ид_кни < x.ид_кни
group by x.ид_кни, x.продажи, x.сумма
