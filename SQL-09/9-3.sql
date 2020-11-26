select ид_авт, имя, фамилия
from авторы
where ид_авт not in (select ид_авт from [книги-авторы])

select ид_авт, имя, фамилия
from авторы
where not exists (select ид_авт from [книги-авторы]
                         where авторы.ид_авт = [книги-авторы].ид_авт)

select авторы.ид_авт, авторы.имя, авторы.фамилия
from авторы
left outer join [книги-авторы] on авторы.ид_авт = [книги-авторы].ид_авт
where [книги-авторы].ид_авт is null
