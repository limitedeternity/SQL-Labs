select ид_авт, имя, фамилия, город
from авторы
where город = any (select город from издательства)
