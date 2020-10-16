select ид_кни,
  case
  when продажи is null then 'не определено'
  when продажи <= 1000 then 'не более 1000'
  when продажи between 1001 and 10000 then 'от 1 001 до 10 000'
  when продажи between 10001 and 100000 then 'от 10 001 до 100 000'
  when продажи between 100001 and 1000000 then 'от 100 001 до 1 000 000'
  else 'более 1 000 001'
  end as [категория продаж]
from Книги.dbo.книги
order by продажи asc
