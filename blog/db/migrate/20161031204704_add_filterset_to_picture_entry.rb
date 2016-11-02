class AddFiltersetToPictureEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :picture_entries, :filterset, :boolean
  end
end
