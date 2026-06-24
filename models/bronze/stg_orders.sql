select 
ORDER_ID ,
CUSTOMER_ID ,
PRODUCT_ID ,
QUANTITY ,
ORDER_DATE
from {{ source('bronze','ORDERS') }}