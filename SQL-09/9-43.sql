select distinct город
from авторы
where exists (select издательства.город from издательства where авторы.город = издательства.город)
