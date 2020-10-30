select c1.имя, c1.фамилия, c2.имя, c2.фамилия
from (select * from авторы where регион = 'Москва') as c1 join (select * from авторы where регион = 'Москва') as c2
on c1.имя < c2.имя and c1.фамилия <> c2.фамилия
