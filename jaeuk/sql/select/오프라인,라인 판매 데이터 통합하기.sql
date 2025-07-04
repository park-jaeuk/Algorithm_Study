(select date_format(sales_date, '%Y-%m-%d') as SALES_DATE, product_id, user_id, sales_amount
from online_sale
where sales_date >= '2022-03-01' and sales_date <= '2022-03-31')
union all
(select date_format(sales_date, '%Y-%m-%d') as SALES_DATE, product_id,NULL as user_id, sales_amount
from offline_sale
where sales_date >= '2022-03-01' and sales_date <= '2022-03-31')
order by sales_date, product_id, user_id