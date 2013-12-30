class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :employee
      t.text :comment
      t.string :payment_type
      t.datetime :sale_time

      t.timestamps
    end
  end
end
