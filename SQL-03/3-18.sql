select ид_кни, контракт, nullif(контракт, 0) as [Null контракт]
from Книги.dbo.книги
