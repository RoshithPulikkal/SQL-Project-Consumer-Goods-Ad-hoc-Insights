select 
	customer_code, 
    customer, 
	round(pre_invoice_discount_pct * 100,2) as Avg_discount_pct
from dim_customer
join fact_pre_invoice_deductions using (customer_code)
where market = "India" and fiscal_year = 2021
order by Avg_discount_pct desc
limit 5

