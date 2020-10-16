select ид_кни, жанр, цена, 
  case жанр
  when 'история' then цена * 1.10
  when 'психология' then цена * 1.20
  else цена 
  end as [новая цена]
from Книги.dbo.книги
