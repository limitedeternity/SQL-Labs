select ид_авт, имя, фамилия, регион
from авторы
where регион = (select регион from авторы where ид_авт = 'А05')

select c1.ид_авт, c1.имя, c1.фамилия, c1.регион
from авторы c1 join (select * from авторы where ид_авт = 'А05') as c2
on c1.регион = c2.регион
