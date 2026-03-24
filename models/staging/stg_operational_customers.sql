select
    customer_id,
    name,
    status,
    updated_at
from {{ source('RAW_OPERATIONAL_DATA', 'CUSTOMERS') }}
