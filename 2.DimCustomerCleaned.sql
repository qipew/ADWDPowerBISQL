SELECT 
  c.CustomerKey as [CustomerKey], 
  c.FirstName as [First Name], 
  c.LastName as [Last Name], 
  c.Firstname + ' ' + lastName as [Full Name], 
  CASE c.Gender When 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  c.DateFirstPurchase as [Date First Purchase], 
  geo.city as [Customer City] 
FROM 
  DimCustomer as c --need to use c because select data from other table
  left join DimGeography as geo on geo.GeographyKey = c.GeographyKey 
order by 
  CustomerKey ASC

