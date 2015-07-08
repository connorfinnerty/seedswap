class CreateSwaps < ActiveRecord::Migration
  def change
    create_table :swaps do |t|
      t.belongs_to :request, index: true, null: false
      t.boolean :status
    end
  end
end
