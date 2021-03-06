select авторы.ид_авт, авторы.имя, авторы.фамилия
from авторы
left join [книги-авторы] on авторы.ид_авт = [книги-авторы].ид_авт
left join книги on книги.ид_кни = [книги-авторы].ид_кни
group by авторы.ид_авт, авторы.имя, авторы.фамилия
having count(книги.ид_кни) = 0
