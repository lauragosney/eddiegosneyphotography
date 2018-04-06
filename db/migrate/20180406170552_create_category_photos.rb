class CreateCategoryPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :category_photos do |t|
      t.belongs_to :photo, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
