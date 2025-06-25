with distinct_product_counts as
	(
    select 
		segment,
		count(distinct(case when fiscal_year = 2021 then s.product_code end)) as Product_Count_2021,
        count(distinct(case when fiscal_year = 2020 then s.product_code end)) as Product_Count_2020
	from fact_sales_monthly s
	join dim_product p using(product_code)
	group by segment
	)
select *, Product_Count_2021 - Product_Count_2020 as Difference
from distinct_product_counts
order by Difference desc

