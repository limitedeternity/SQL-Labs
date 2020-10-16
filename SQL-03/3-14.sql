select название, [дата издания]
from Книги.dbo.книги
where datepart("yyyy", [дата издания]) between 2001 and 2002
      and datepart("m", [дата издания]) between 1 and 6
order by CURRENT_TIMESTAMP - [дата издания] desc
