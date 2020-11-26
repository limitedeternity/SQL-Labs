select ид_авт, имя, фамилия
from авторы
where ид_авт not in (select ид_авт from [книги-авторы])
