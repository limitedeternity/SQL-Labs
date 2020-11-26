select жанр
from книги
group by жанр
having count(distinct издательство) > 1
