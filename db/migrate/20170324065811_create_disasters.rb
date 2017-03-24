class CreateDisasters < ActiveRecord::Migration
  def change
    create_table :disasters do |t|
      t.string :name
      t.text :description
      t.integer :user_id, index: true
      t.integer :info_id

      t.timestamps null: false
    end
  end
end
