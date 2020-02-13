select 
    email, 
    Status, 
    sum(Amount) as total_amount 
from {{ ref('fct_orders') }} O
inner join {{ ref('stg_customers') }} C on c.customer_id = o.customer_id 
group by 1,2