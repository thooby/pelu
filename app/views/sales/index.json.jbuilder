json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_id, :employee, :comment, :payment_type, :sale_time
  json.url sale_url(sale, format: :json)
end
