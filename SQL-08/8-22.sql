select distinct имя, фамилия, издательства.город
from авторы
inner join издательства on авторы.город = издательства.город
order by 2 asc;
