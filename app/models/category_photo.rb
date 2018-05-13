class CategoryPhoto < ApplicationRecord
  belongs_to :photo
  belongs_to :category

  def to_param
    id.to_s + "-" + title.parameterize
  end
end
