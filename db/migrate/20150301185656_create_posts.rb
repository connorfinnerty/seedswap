class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :name
      t.string   :category
      t.integer  :quantity
      t.text     :description
      t.datetime :seed_harvested
      t.boolean  :tested
      t.references :user, index: true
      t.references :variety, index: true
    end
  end
    add_foreign_key :posts, :users
    add_foreign_key :posts, :varieties
end
