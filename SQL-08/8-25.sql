select имя, фамилия, авторы.город, авторы.регион
from авторы
inner join издательства on авторы.город = издательства.город
