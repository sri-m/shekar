class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.string :product
      t.string :price

      t.timestamps
    end
  end
end
