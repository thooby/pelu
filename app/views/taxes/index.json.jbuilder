json.array!(@taxes) do |tax|
  json.extract! tax, :id, :name, :percent
  json.url tax_url(tax, format: :json)
end
