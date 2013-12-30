class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :username
      t.string :password
      t.text :comments
      t.integer :person_id
      t.boolean :deleted

      t.timestamps
    end
  end
end
