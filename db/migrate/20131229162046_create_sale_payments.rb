class CreateSalePayments < ActiveRecord::Migration
  def change
    create_table :sale_payments do |t|
      t.integer :sale_id
      t.string :payment_type
      t.decimal :payment_amount

      t.timestamps
    end
  end
end
