select
    shipment_id,
    max(event_ts) as last_event_ts,
    any_value(event_type) as last_event
from {{ ref('stg_operational_shipments') }}
group by shipment_id