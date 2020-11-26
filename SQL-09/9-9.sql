select регион
from авторы
where not exists (select регион from издательства
                         where авторы.регион = издательства.регион)
