class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.string :user_name
      t.integer :picture_entry_id

      t.timestamps
    end
  end
end
