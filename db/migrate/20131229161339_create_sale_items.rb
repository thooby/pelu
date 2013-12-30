class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.integer :sale_id
      t.integer :item_id
      t.string :description
      t.integer :line
      t.decimal :quantity_purchased
      t.decimal :item_cost_price
      t.decimal :item_unit_price
      t.decimal :discount_percent

      t.timestamps
    end
  end
end
