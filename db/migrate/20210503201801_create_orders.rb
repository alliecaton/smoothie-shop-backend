class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :total_price
      t.string :address
      t.string :card_number 
      t.string :card_exp 
      t.string :card_security_num
      t.string :note
      t.timestamps
    end
  end
end
