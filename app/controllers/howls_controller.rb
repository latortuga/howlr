class HowlsController < ApplicationController
  def index
    @howls = Howl.all
  end

  def new
    @howl = Howl.new
  end

  def create
    @howl = Howl.new(howl_params)

    if @howl.save
      redirect_to howls_path
    else
      render :new
    end
  end

  private

  def howl_params
    params.require(:howl).permit(:content, :picture_url, :wolf_id)
  end
end
