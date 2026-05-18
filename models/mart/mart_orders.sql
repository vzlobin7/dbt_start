select order_amount, order_status, order_date, first_name||' '||last_name, op.product_name, op.product_price 
from {{ref('ods_orders')}} o
join {{ref('ods_users')}} ou on ou.user_id = o.user_id   
left join {{ref('ods_products')}} op on o.order_id = op.product_id 