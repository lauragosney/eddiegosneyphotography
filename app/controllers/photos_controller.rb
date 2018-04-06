class PhotosController < ApplicationController

  def index
   @category_id = params[:category]

   if @category_id.present?
      @category = Category.find_by(title: @category_id)
      @photos = @category.photos.all
   else
      @photos = Photo.order('created_at DESC')
   end
  end

  def show
    @photo = Photo.find(params[:id])

  end

end
