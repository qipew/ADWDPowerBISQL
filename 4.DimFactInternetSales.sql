SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [dbo].[FactInternetSales] 
where 
  left (OrderDateKey, 4) >= YEAR(getdate()) -2 
  --Ensure to get Data from 2021 and above
order by 
  OrderDate ASC
