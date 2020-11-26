select ид_авт, имя, фамилия
from авторы
where ид_авт in (select ид_авт from [книги-авторы] where доля_автора = 1.0) and ид_авт in (select ид_авт from [книги-авторы] where доля_автора < 1.0)

select distinct b.ид_авт, имя, фамилия
from авторы
inner join [книги-авторы] a on a.доля_автора = 1.0 and a.ид_авт = авторы.ид_авт
inner join [книги-авторы] b on b.доля_автора < 1.0 and b.ид_авт = авторы.ид_авт and a.ид_авт = b.ид_авт

select ид_авт, имя, фамилия
from авторы
where ид_авт in (select ид_авт from [книги-авторы] where доля_автора = 1.0)
intersect
select ид_авт, имя, фамилия
from авторы
where ид_авт in (select ид_авт from [книги-авторы] where доля_автора < 1.0)
