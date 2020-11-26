select distinct город
from авторы
where not exists (select издательства.город from издательства where авторы.город = издательства.город)
