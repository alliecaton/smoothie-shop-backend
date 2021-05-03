class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.decimal :price
      t.integer :order_id
      t.timestamps
    end
  end
end
