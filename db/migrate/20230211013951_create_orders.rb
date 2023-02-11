class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.integer :lease_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end