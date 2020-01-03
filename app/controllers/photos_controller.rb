class PhotosController < ApplicationController

  layout 'public'

  before_action :confirm_logged_in, :except => [:index, :show]
  
  def index
    # @photos = Photo.all.sorted.newest_first
    @photos = Photo.all.sorted.newest_first.top_15
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.valid?
      @photo.save
      flash[:notice] = "Photo created successfully."
      redirect_to(photo_path(@photo))
    else
      render('new')
    end
  end

  def show
    @photo = find_photo
  end

  def edit
    @photo = find_photo
  end

  def update
    @photo = find_photo
    if @photo.update_attributes(photo_params)
      flash[:notice] = "Photo updated successfully."
      redirect_to(photo_path(@photo))
    else
      render(:edit)
    end
  end

  def delete
    @photo = find_photo
  end

  def destroy
    find_photo.destroy
    flash[:notice] = "Photo deleted successfully."
    redirect_to(photos_path)
  end

  private
    def photo_params
      params.require(:photo).permit(
        :title,
        :remote_url,
        :description,
        :copyright,
        :taken_on,
        :taken_in,
        :season_id,
        :photographer_id,
        :image,
        :remove_image,
        :image_cache
      )
    end
  
    def find_photo
      Photo.find_by(id: params[:id])
    end

end



