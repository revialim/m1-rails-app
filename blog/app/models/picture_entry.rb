class PictureEntry < ApplicationRecord
  has_many :likes
  mount_uploader :picture, PictureUploader
end
