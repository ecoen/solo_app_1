class AddProductIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :produc_id, :integer
  end
end
