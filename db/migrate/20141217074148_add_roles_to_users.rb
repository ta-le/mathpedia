class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :master, :boolean, default: false
    add_column :users, :status, :integer, default: 0
  end
end
