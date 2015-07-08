class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :name
      t.string   :species
      t.integer  :quantity
      t.text     :description
      t.datetime :seed_harvested
      t.boolean  :tested
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end

end
