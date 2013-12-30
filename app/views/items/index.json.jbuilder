json.array!(@items) do |item|
  json.extract! item, :id, :name, :category, :supplier_id, :item_number, :description, :cost_price, :quantity, :reorder_level, :deleted
  json.url item_url(item, format: :json)
end
