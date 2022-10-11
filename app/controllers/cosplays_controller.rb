class CosplaysController < ApplicationController
  def index
    @cosplays = Cosplay.all
  end

  def new
    @cosplay = Cosplay.new
  end
end
