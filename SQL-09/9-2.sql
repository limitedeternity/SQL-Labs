select ид_авт, город
from авторы
where авторы.город in (select город from издательства)

select distinct ид_авт,
       авторы.город as [Город]
from авторы
inner join издательства on авторы.город = издательства.город

select distinct ид_авт, имя, фамилия, авторы.город, а.издательство
from авторы
inner join (select * from издательства) as а on а.город = авторы.город
