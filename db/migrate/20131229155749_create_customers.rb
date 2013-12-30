class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :comments
      t.integer :person_id
      t.boolean :deleted

      t.timestamps
    end
  end
end
