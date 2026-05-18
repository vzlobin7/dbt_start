{{
config(
materialized='incremental',
unique_key='product_id',
alias='ods_products'
)
}}
SELECT
*
FROM {{ ref('stg_products') }}