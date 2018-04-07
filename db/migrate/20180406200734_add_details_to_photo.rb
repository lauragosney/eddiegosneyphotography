class AddDetailsToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :size, :string
    add_column :photos, :price_details, :string
  end
end
