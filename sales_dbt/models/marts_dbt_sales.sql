{{ config(materialized='table') }}

select 
  date(datetime) as date,
  status,
  sum(price*number) as sales
from {{ref("int_dbt_sales")}}
group by date(datetime),status