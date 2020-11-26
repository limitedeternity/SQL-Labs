select ид_авт, 
    (select имя from авторы where авторы.ид_авт = [книги-авторы].ид_авт) as имя,
	(select фамилия from авторы where авторы.ид_авт = [книги-авторы].ид_авт) as фамилия
from [книги-авторы]
where номер_автора <> 1 and доля_автора < 0.5 and 'Москва' in (select город from авторы where авторы.ид_авт = [книги-авторы].ид_авт)
