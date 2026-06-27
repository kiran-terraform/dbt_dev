{{
    config(
        materialized='view',
        schema='GOLD',
        alias='v_fact'
    )
}}

select 

order_id,
customer_id,
product_name,
quantity,
price,
total_amount,
order_date
from {{ ref('fact_orders') }}