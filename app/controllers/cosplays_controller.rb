class CosplaysController < ApplicationController
  def index
    @cosplays = Cosplay.all
  end

  def new
    @cosplay = Cosplay.new
  end

  def create
    @cosplay = Cosplay.new(cosplay_params)
    if @cosplay.save
      redirect_to cosplays_path(@cosplay)
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

  private

  def set_list
    @cosplay = Cosplay.find(params[:id])
  end

  def cosplay_params
    params.require(:cosplay).permit(:name, :price, :category, :size)
  end

end
