class Photo < ApplicationRecord

  has_many :category_photos
  has_many :categories, through: :category_photos, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :categories, presence: true
  validates :size, presence: true
  validates :price_details, presence: true


  mount_uploader :image_1, PhotoImageUploader

  def to_param
    id.to_s + "-" + title.parameterize
  end

  def next
    self.class.where("created_at < ?", self.created_at).order("created_at DESC").first
  end

  def previous
    self.class.where("created_at > ?", self.created_at).order("created_at ASC").first
  end


end
