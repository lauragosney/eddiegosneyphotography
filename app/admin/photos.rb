ActiveAdmin.register Photo do

  permit_params :title, :image_1, :description, :is_sold_out, category_id:[]

  show do
    attributes_table do
     row :title
     row :image_1 do |photo|
       image_tag photo.image_1.thumb, width: "40"
     end
     row :description
     row :is_sold_out

     row :categories do |category|
        category.categories.all.map do |t|
          t.title
        end
      end
    end
      active_admin_comments
  end

  index do
    selectable_column
    index_column
      column "Image" do |photo|
        image_tag photo.image_1.thumb, width: "40"
      end
      column :title
      column :description
      column :is_sold_out

      column :categories do |category|
        category.categories.all.map do |t|
        t.title
        end
      end

      actions
  end

  form do |f|

    f.inputs "Photo" do
      f.input :title
      f.input :description
    end

    f.inputs "FIlters" do
      f.input :is_sold_out, label: "Sold out?"
    end

    f.inputs "Images" do
      f.input :image_1
    end

    f.inputs "Categories" do
        f.input :categories, as: :check_boxes, collection: Category.order("title asc")
     end

    f.actions

  end

    filter :title
    filter :created_at
    filter :is_sold_out

end
