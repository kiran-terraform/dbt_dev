select
PRODUCT_ID ,
PRODUCT_NAME ,
CATEGORY ,
PRICE
from {{ source('bronze','PRODUCTS')}}