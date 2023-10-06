SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as [Product Item Code], 
  p.[EnglishProductName] as [Product Name], 
  psc.EnglishProductSubCategoryName as [Sub Category], 
  -- Joined from Sub Category table (dimproductsubcategory)
  pc.EnglishProductCategoryName as [Product Category], 
  -- Joined from Category table (dimproductcategory)
  p.[Color] as [Product Color], 
  p.[Size] as [Product Size], 
  p.[ProductLine] as [Product Line], 
  p.[ModelName] as [Product Model Name], 
  p.[EnglishDescription] as [Production Name], 
  isnull (p.[Status], 'Outdated') as [Product Status] 
FROM 
  [DimProduct] as p 
  left join DimProductSubcategory as psc 
  on psc.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join DimProductCategory as pc 
  on psc.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey ASC
