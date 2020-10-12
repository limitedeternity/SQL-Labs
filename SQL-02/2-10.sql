SELECT [имя] as name, [фамилия] as surname, [регион] as region
  FROM [Книги].[dbo].[авторы]
  ORDER BY region, surname, name asc;
