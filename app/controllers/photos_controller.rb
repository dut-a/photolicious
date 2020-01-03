class PhotosController < ApplicationController

  def index
    @photos = Photo.all.sorted.newest_first.top_5
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.valid?
      @photo.save
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
        :photographer_id
      )
    end
  
    def find_photo
      Photo.find_by(id: params[:id])
    end

end



