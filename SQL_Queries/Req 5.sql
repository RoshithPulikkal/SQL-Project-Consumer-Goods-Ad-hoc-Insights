select 	p.product_code, 
		p.product, 
        cost_year, 		-- added cost year for more clarity --
        round(manufacturing_cost,2)   as Manufacturing_cost
from dim_product p
join fact_manufacturing_cost m using(product_code)
where 					-- filtering for lowest and highest manufacturing cost --
	manufacturing_cost in	(
							(select max(manufacturing_cost) from fact_manufacturing_cost), 
							(select min(manufacturing_cost) from fact_manufacturing_cost)
                            )
order by manufacturing_cost desc


