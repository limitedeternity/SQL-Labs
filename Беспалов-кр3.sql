/* Беспалов Вячеслав -- Вариант 15 */

/* 1. Сотрудники: не пенсионеры, подразделения НИ, рожд. до 1980, без учёной степени и звания */
/* Только соединения */
select distinct с.ФИО, фп.Пенсионер, т.Название, фп.ДатаРождения, н.УченаяСтепень, н.УченоеЗвание
from Кадры_К.dbo.ФиоСотрудники с
inner join Кадры_К.dbo.ФиоШтат ш on с.НомерКарточки = ш.НомерКарточки
inner join Кадры_К.dbo.Подразделения п on ш.КодПОДРАЗДЕЛЕНИЯ = п.КодПодр
inner join Кадры_К.dbo.ТипыПодразделений т on т.Тип = п.Тип and т.Название = 'Hаучно-исследовательские подразделения'
inner join Кадры_К.dbo.ФиоПаспорт фп on с.НомерКарточки = фп.НомерКарточки and фп.Пенсионер != '1' and year(фп.ДатаРождения) < 1980
left join Кадры_К.dbo.ФиоНауч н on с.НомерКарточки = н.НомерКарточки
where н.УченаяСтепень is null and н.УченоеЗвание is null

/* Только подзапросы */
select distinct с.ФИО
from Кадры_К.dbo.ФиоСотрудники с
where с.НомерКарточки in (select ш.НомерКарточки from Кадры_К.dbo.ФиоШтат ш where ш.КодПОДРАЗДЕЛЕНИЯ in 
                              (select п.КодПодр from Кадры_К.dbo.Подразделения п where п.Тип in 
							       (select т.Тип from Кадры_К.dbo.ТипыПодразделений т where т.Название = 'Hаучно-исследовательские подразделения')))
      and с.НомерКарточки in (select фп.НомерКарточки from Кадры_К.dbo.ФиоПаспорт фп where фп.Пенсионер != '1' and year(фп.ДатаРождения) < 1980)
	  and с.НомерКарточки not in (select н.НомерКарточки from Кадры_К.dbo.ФиоНауч н where н.УченаяСтепень is not null or н.УченоеЗвание is not null)

/* 2. Вакансии: 9, 10, 11 разряд, группа инж.-тех. */
/* Только соединения */
select р.КодПодразделения, п.НАЗВАНИЕ as 'Подразделение', с.НАЗВАНИЕ as 'Должность', р.Разряд, (р.КоличДолжностей - count(ш.НомерКарточки)) as 'Количество вакансий'
from Кадры_К.dbo.ШтатноеРасписание р
inner join Кадры_К.dbo.СправочникДолжностей с on р.КодДолжности = с.КодДолжности
inner join Кадры_К.dbo.ГруппыДолжностей г on с.Группа = г.Группа and г.НазваниеГруппы = 'Инженерно-технический персонал'
inner join Кадры_К.dbo.Подразделения п on п.КодПодр = р.КодПодразделения
left join Кадры_К.dbo.ФиоШтат ш on р.КодДолжности = ш.КодДОЛЖНОСТИ and р.КодПодразделения = ш.КодПОДРАЗДЕЛЕНИЯ and р.Разряд = ш.РАЗРЯД and р.Разряд not in ('09', '10', '11')
group by р.КодПодразделения, 
         п.КодПодр, п.НАЗВАНИЕ, 
		 с.КодДолжности, с.НАЗВАНИЕ, 
		 р.Разряд, р.КоличДолжностей
having р.КоличДолжностей - count(ш.НомерКарточки) > 0

