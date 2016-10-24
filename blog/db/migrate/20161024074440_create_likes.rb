class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.string :user_name
      t.references :picture_entry, foreign_key: true

      t.timestamps
    end
  end
end
