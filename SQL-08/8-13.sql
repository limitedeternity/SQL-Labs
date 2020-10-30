select авторы.имя, авторы.фамилия, авторы.город, издательства.издательство
from авторы
left join издательства on авторы.город = издательства.город
order by 4;