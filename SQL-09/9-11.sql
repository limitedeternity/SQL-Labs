declare @i int, @max int, @query nvarchar(1024)

set @i = 0
set @max=(
	select max(номер_автора) 
	from [книги-авторы]
	inner join книги on книги.ид_кни = [книги-авторы].ид_кни and жанр = 'психология'
)
set @query = 'select название, '

while (@i < @max)
begin
    set @i  = @i + 1
	set @query = concat(@query, '(select ид_авт from [книги-авторы] where номер_автора=', @i, ' and [книги-авторы].ид_кни = книги.ид_кни) as [', concat('Автор ', @i), ']')
	if @i < @max set @query = concat(@query, ', ')
end

set @query = concat(@query, ' from книги where жанр = ', char(39), 'психология', char(39))
exec(@query)

/* ************************** */

set @i = 0
set @query = 'select название, '

while (@i < @max)
begin
    set @i  = @i + 1
	set @query = concat(@query, '(select concat(фамилия, char(32), имя) from [книги-авторы] inner join авторы on авторы.ид_авт = [книги-авторы].ид_авт where номер_автора=', @i, ' and [книги-авторы].ид_кни = книги.ид_кни) as [', concat('Автор ', @i), ']')
	if @i < @max set @query = concat(@query, ', ')
end

set @query = concat(@query, ' from книги where жанр = ', char(39), 'психология', char(39))
exec(@query)

/* *************************** */

set @i = 0
set @query = 'select concat('

while (@i < @max)
begin
    set @i = @i + 1
	set @query = concat(@query, '(select concat(фамилия, char(32), substring(имя, 1, 1), char(46)', IIF(@i < @max, ', char(44)', ''), ', char(32)) from [книги-авторы] inner join авторы on авторы.ид_авт = [книги-авторы].ид_авт where номер_автора=', @i, ' and [книги-авторы].ид_кни = книги.ид_кни)')
	if @i < @max set @query = concat(@query, ', ')
end

set @query = concat(@query, ', название) as Литература from книги where жанр = ', char(39), 'психология', char(39))
exec(@query)
