{{ config(
    materialized='view',
    database='dish_dev',
    schema='silver'
)}}

select

o.order_id,
o.customer_id,
c.customer_name,
p.product_name,

p.category,
o.quantity,

p.price,

(o.quantity * p.price) as total_amount,

o.order_date

from {{ ref('stg_orders') }} o

join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id

join {{ ref('stg_product') }} p
    on o.product_id = p.product_id