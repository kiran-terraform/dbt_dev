select 
CUSTOMER_ID,
upper(CUSTOMER_NAME) as CUSTOMER_NAME,
EMAIL,
COUNTRY,
CREATED_DATE
from {{ source('bronze','CUSTOMERS')}}