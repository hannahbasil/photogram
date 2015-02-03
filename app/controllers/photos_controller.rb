class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @one_photo =Photo.find_by(:id => params[:id])
  end

  def new_form
  end

  def create_row
    @p = Photo.new
    @p.source = params["the_source"]
    @p.caption = params["the_caption"]
    @p.save
  end

  def destroy
     @delete_photo =Photo.find_by(:id => params[:id])
     @delete_photo.destroy
  end

  def edit_form
    @edit_photo =Photo.find_by(:id => params[:id])
  end

  def update_row
    @p = Photo.find_by(:id => params["id"])
    @p.source = params["the_source"]
    @p.caption = params["the_caption"]
    @p.save
  end

end
