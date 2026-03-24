select
    order_id,
    customer_id,
    amount,
    status,
    updated_at,
    case 
        when amount > 1000 then 'HIGH_VALUE'
        when status = 'pending' then 'UNDER_REVIEW'
        else 'NORMAL'
    end as operational_flag
from {{ ref('stg_operational_orders') }}