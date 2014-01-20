class RemoveColunmProducIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :produc_id, :integer
  end
end
