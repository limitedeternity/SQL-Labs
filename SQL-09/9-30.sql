select ид_авт, имя, фамилия
from авторы
where ид_авт in (select ид_авт from [книги-авторы] where доля_автора = 1.0) 
