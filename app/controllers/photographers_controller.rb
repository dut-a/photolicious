class PhotographersController < ApplicationController

  layout 'public'

  before_action :confirm_logged_in, :except => [:index, :show]

  def index
    @photographers = Photographer.all
  end

  def new
    @photographer = Photographer.new
  end

  def create
    @photographer = Photographer.new(photographer_params)
    if @photographer.valid?
      @photographer.save
      flash[:notice] = "Photographer created successfully."
      redirect_to(photo_path(@photographer))
    else
      render('new')
    end
  end

  def show
    @photographer = find_photographer
  end

  def edit
    @photographer = find_photographer
  end

  def update
    @photographer = find_photographer
    if @photographer.update_attributes(photographer_params)
      flash[:notice] = "Photographer updated successfully."
      redirect_to(photo_path(@photographer))
    else
      render(:edit)
    end
  end

  def delete
    @photographer = find_photographer
  end

  def destroy
    find_photographer.destroy
  end

  private
    def photographer_params
      params.require(:photographer).permit(
        :first_name,
        :last_name,
        :profession,
        :place_of_operation
      )
    end
  
    def find_photographer
      Photographer.find_by(id: params[:id])
    end

end
