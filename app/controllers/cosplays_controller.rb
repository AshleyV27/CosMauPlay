class CosplaysController < ApplicationController
  def index
    if params[:query].present?
      @cosplays = Cosplay.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @cosplays = Cosplay.all
    end
  end

  def new
    @cosplay = Cosplay.new
  end

  def create
    @cosplay = Cosplay.new(cosplay_params)
    if @cosplay.save
      redirect_to home_path(@cosplay)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @cosplay = Cosplay.find(params[:id])
  end

  def destroy
    @cosplay = Cosplay.find(params[:id])
    @cosplay.destroy
    redirect_to cosplays_path, status: :see_other
  end

  def edit
    @cosplay = Cosplay.find(params[:id])
  end

  def update
    @cosplay = Cosplay.find(params[:id])
    @cosplay.update(cosplay_params)
    redirect_to cosplays_path(@cosplay)
  end

  def my_cosplays
    @my_cosplays = Cosplay.where(user: current_user)
  end

  private

  def set_list
    @cosplay = Cosplay.find(params[:id])
  end

  def cosplay_params
    params.require(:cosplay).permit(:name, :price, :category, :size, :photo)
  end
end
