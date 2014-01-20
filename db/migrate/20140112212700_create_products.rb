class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :numberavailable
      t.string :imageurl
      t.string :string

      t.timestamps
    end
  end
end
