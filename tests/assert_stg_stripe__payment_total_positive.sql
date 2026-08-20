select
    order_id,
    sum(payment_dollar_amount) as total_amount
from {{ ref('stg_stripe__payment') }}
group by 1
having sum(payment_dollar_amount) < 0