class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :supplier_id
      t.integer :item_number
      t.text :description
      t.decimal :cost_price
      t.decimal :quantity
      t.decimal :reorder_level
      t.boolean :deleted

      t.timestamps
    end
  end
end
