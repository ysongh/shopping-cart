class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :orderDate
      t.belongs_to :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
