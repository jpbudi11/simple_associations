class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :item_name
      t.float :total_cost

      t.timestamps
    end
  end
end
