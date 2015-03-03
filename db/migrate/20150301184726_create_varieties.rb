class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.string   :species
      t.string   :genus
      t.string   :variety
      t.string   :common_name
    end
  end
  add_foreign_key :varieties, :users
end
