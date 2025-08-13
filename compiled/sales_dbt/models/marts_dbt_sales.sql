

select 
  date(datetime) as date,
  status,
  sum(price*number) as sales
from STARTER.SALES.int_dbt_sales
group by date(datetime),status