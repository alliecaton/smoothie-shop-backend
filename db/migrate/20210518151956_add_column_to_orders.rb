class AddColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :status, :string, default: 'open'
  end
end
