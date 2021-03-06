select (авторы.имя + ' ' + авторы.фамилия) as Автор,
       авторы.город as [Город.авт],
	   издательства.город as [Город.изд], 
	   издательства.издательство
from авторы
inner join издательства on авторы.город = издательства.город
order by 1 asc;
