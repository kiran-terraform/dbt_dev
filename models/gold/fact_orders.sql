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