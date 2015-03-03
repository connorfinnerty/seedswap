class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text     :description
      t.references :post, index: true
      t.references :user, index: true
    end
  end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
end
