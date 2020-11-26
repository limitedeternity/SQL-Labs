select издательство 
from издательства
where ид_изд in
(select distinct издательство
from книги
where жанр = 'история');

select distinct издательства.издательство
from издательства
inner join книги on книги.издательство = издательства.ид_изд and книги.жанр = 'история'
