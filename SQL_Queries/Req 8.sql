select  
		case 	when month(date) in (9,10,11) then "Q1"			-- fiscal quarter --
				when month(date) in (12,1,2) then "Q2"
				when month(date) in (3,4,5) then "Q3"
				else "Q4"
		end as Qtr,
		concat(round(sum(sold_quantity)/1000000,2), "M") as Sold_Quantity_Mil   -- sold quantity in millions --

from fact_sales_monthly
where fiscal_year = 2020
group by Qtr
order by sold_quantity_mil desc

