select
    event_id,
    shipment_id,
    event_type,
    event_ts
from {{ source('RAW_OPERATIONAL_DATA', 'SHIPMENT_EVENTS') }}