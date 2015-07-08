class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :role, :string
    add_column :users, :description, :string
  end
end
