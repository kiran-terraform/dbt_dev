{{ config(
    materialized='table',
    database='dish_dev',
    schema='gold',
    pre_hook=["use warehouse DBT_XS"]
)}}

select
order_id,
customer_id,
product_name,
category,
quantity,
price,
total_amount,
order_date


from {{ ref('int_customer_orders') }} 