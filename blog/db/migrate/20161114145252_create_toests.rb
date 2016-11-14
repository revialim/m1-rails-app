class CreateToests < ActiveRecord::Migration[5.0]
  def change
    create_table :toests do |t|
      t.string :name
      t.integer :crunchiness
      t.boolean :sweet
      t.integer :price

      t.timestamps
    end
  end
end
