class PictureEntry < ApplicationRecord
mount_uploader :picture, PictureUploader
end
