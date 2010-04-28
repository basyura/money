class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :name
      t.string :mail

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
