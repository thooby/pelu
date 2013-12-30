json.array!(@sale_payments) do |sale_payment|
  json.extract! sale_payment, :id, :sale_id, :payment_type, :payment_amount
  json.url sale_payment_url(sale_payment, format: :json)
end
