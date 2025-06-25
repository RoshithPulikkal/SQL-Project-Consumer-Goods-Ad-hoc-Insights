SELECT distinct market 
FROM dim_customer
where 
		customer = "Atliq exclusive" and 
        region = "APAC"
