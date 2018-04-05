class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image_1
      t.text :description
      t.integer :price
      t.boolean :is_sold_out, default: false

      t.timestamps
    end
  end
end
