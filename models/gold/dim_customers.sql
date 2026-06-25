select
customer_id,
customer_name,
country,
created_date

from {{ ref('stg_customers') }}