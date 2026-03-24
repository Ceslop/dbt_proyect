select
  shipment_id,
  last_event_ts,
  last_event
from {{ ref('int_operational_shipments_agg') }}