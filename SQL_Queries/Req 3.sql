select 
	segment, 
    count(distinct product_code) as Product_Count 
from dim_product
group by segment
order by Product_Count desc

