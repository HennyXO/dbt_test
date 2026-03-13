with

source as (
    select * from {{source('stripe','payment')}}
),

renamed as (
    
SELECT
  id as payment_id,
  orderid as order_id,
  paymentmethod as payment_method,
  status as payment_status,
  amount as payment_amount,
  created as payment_created,
  _batched_at
FROM source

)

Select * from renamed