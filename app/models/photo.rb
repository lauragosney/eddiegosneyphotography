class Photo < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :image_1, PhotoImageUploader

end
