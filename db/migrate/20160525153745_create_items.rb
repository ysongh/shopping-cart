class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.integer :inCart
      t.integer :price

      t.timestamps null: false
    end
  end
end
