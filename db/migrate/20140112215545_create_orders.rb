class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.date :shipdate

      t.timestamps
    end
  end
end
