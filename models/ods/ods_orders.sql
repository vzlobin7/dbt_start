{{
config(
materialized='incremental',
unique_key='order_id',
alias='ods_orders'
)
}}
SELECT
*
FROM {{ ref('stg_orders') }}