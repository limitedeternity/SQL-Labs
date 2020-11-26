select ид_авт, имя, фамилия, город
from авторы
where город <> all (select город from издательства)

select ид_авт, имя, фамилия, город
from авторы
where авторы.город not in (select город from издательства)
