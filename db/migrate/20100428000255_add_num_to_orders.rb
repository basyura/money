class AddNumToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :num, :string
  end

  def self.down
  end
end
