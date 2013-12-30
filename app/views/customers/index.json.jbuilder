json.array!(@customers) do |customer|
  json.extract! customer, :id, :comments, :person_id, :deleted
  json.url customer_url(customer, format: :json)
end
