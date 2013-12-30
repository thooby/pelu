json.array!(@sale_items) do |sale_item|
  json.extract! sale_item, :id, :sale_id, :item_id, :description, :line, :quantity-purchased, :item_cost_price, :item_unit_price, :discount_percent
  json.url sale_item_url(sale_item, format: :json)
end
