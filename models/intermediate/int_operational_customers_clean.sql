select
    customer_id,
    name,
    status,
    updated_at
from {{ ref('stg_operational_customers') }}