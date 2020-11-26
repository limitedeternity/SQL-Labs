select distinct ид_авт, 
       (select имя from авторы where ид_авт = [книги-авторы].ид_авт) as имя,
	   (select фамилия from авторы where ид_авт = [книги-авторы].ид_авт) as фамилия
from [книги-авторы]
where доля_автора = 1.0

select ид_авт, имя, фамилия
from авторы
where ид_авт in (select distinct ид_авт from [книги-авторы] where доля_автора = 1.0)
