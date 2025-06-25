with channel_GS as  -- channel wise gross sales CTE creation --
	(
	select 
			channel, 
			concat(round(sum(sold_quantity * gross_price)/1000000, 2), "M") as Gross_sales_Mln 
	from fact_sales_monthly s
	join dim_customer c using(customer_code)
	join fact_gross_price g using(product_code, fiscal_year)
	where s.fiscal_year = 2021
	group by channel
    )
select *, round(sum(gross_sales_mln)*100/(sum(gross_sales_mln) over ()),2) as Pct_contribution -- adding % contribution --
from channel_GS
group by channel
order by Pct_contribution desc