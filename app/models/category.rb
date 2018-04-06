class Category < ApplicationRecord

  has_many :category_photos
  has_many :photos, through: :category_photos

  validates :title, presence: true

end
