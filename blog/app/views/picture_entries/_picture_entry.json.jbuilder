json.extract! picture_entry, :id, :title, :description, :location, :picture, :created_at, :updated_at
json.url picture_entry_url(picture_entry, format: :json)