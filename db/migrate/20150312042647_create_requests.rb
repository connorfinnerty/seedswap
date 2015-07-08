class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :post, index: true, null: false
      t.boolean :status

      t.timestamps null: false
    end
    add_foreign_key :requests, :users
    add_foreign_key :requests, :posts
  end
end
