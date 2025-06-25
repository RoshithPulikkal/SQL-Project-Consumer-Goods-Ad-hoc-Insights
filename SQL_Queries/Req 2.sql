select 
	Unique_products_2020, 
	Unique_products_2021, 
	round((unique_products_2021 - unique_products_2020) * 100.0 / unique_products_2020, 2) as Percentage_growth
from
	(select count(distinct product_code) as Unique_products_2020 from fact_sales_monthly where fiscal_year = 2020) Y2020, 
	(select count(distinct product_code) as Unique_products_2021 from fact_sales_monthly where fiscal_year = 2021) Y2021
    
    