{{
config(
materialized='incremental',
unique_key='user_id',
alias='ods_users'
)
}}
SELECT
*
FROM {{ ref('stg_users') }}