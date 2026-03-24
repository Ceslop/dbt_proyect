{% snapshot customers_snapshot %}
  {{
      config(
        target_schema='snapshots_operational_data',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_at'
      )
  }}

  select
      customer_id,
      name,
      status,
      updated_at
  from {{ source('raw_operational_data', 'customers') }}

{% endsnapshot %}