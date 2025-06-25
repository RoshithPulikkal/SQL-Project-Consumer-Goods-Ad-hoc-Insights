with product_sold_qty as    	-- creating products table with total qty sold --
		(
		select division, product_code, product, sum(sold_quantity) as Sold_qty
		from fact_sales_monthly s
		join dim_product p using(product_code)
		where fiscal_year = 2021
		group by product_code, product, division
		),
ranked_products as     			-- adding ranks to products within each division --   
		(
		select 	division, 
				product_code, product, 
				sold_qty, 
				dense_rank() over(partition by division order by sold_qty desc) as rank_order
		from product_sold_qty
        )
select division, product_code, product, sold_qty, rank_order
from ranked_products
where rank_order <= 3					-- filtering for top 3 ranks --
