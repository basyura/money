class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :project_id
      t.string :name
      t.integer :amount
      t.date :start
      t.date :end

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
