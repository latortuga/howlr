class WolvesController < ApplicationController
  def index
  end

  def new
    @wolf = Wolf.new
  end

  def create
    @wolf = Wolf.new(wolf_params)

    if @wolf.save
      redirect_to wolves_path
    else
      render :new
    end
  end

  private

  def wolf_params
    params.require(:wolf).permit(:name, :picture_url, :bio)
  end
end
