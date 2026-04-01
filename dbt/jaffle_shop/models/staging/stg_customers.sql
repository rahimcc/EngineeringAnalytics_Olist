{{config(materialized='view', schema='staging')}}


SELECT 
    lower(trim(customer_id)) as customer_id ,
    lower(trim(customer_unique_id)) as customer_unique_id ,
    lower(trim(customer_zip_code_prefix::STRING)) as customer_zip_code_prefix,
    lower(trim(customer_city)) as customer_city ,
    lower(trim(customer_state)) as customer_state 
FROM  {{ source('bronze','olist_customers')}}

