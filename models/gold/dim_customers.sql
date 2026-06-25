{{ config(
    materialized='table',
    database='dish_dev',
    schema='gold',
    alias='Dim_customers'
)}}

select
customer_id,
customer_name,
country,
created_date

from {{ ref('stg_customers') }}