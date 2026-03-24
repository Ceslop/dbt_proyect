select
    order_id,
    customer_id,
    status,
    amount,
    updated_at,
    current_timestamp() as ingestion_ts
from {{ source('RAW_OPERATIONAL_DATA', 'ORDERS') }}