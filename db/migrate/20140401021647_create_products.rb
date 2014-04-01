class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.string :image_name

      t.timestamps
    end
  end
end
