SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  [EnglishDayNameOfWeek] as Day, 
  [WeekNumberOfYear] as WeekNum, 
  [EnglishMonthName] as Month, 
  Left([EnglishMonthName], 3) as MonthSht, 
  [MonthNumberOfYear] as MonthNum, 
  [CalendarQuarter] as Quater, 
  [CalendarYear] as Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
where 
  CalendarYear >= 2021
