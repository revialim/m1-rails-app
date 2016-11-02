class PictureEntry < ApplicationRecord
  has_many :likes
  mount_uploader :picture, PictureUploader

#  def get_filterset
#    self.filterset
#  end

#  def set_filterset= value
#    self.filterset = value
#  end

end
