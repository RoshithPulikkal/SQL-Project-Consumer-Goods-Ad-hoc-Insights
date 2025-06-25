select 
	monthname(date) as Month, 
    year(date) as Year, 
    fiscal_year, 
    concat(round(sum(gross_price * sold_quantity/1000000),2), "M") as Gross_sales_amt   -- Gross Sales in Millions -- 
from fact_sales_monthly s
join fact_gross_price g 
			using(product_code, fiscal_year)
join dim_customer c using(customer_code)
where c.customer = "Atliq Exclusive"
group by year(date), monthname(date), fiscal_year
order by year, month(month)
