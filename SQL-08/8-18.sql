select c1.имя, c1.фамилия, c2.имя, c2.фамилия
from (select * from авторы where регион = 'Москва') as c1 join (select * from авторы where регион = 'Москва') as c2
on 1=1
