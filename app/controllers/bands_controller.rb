class BandsController < ApplicationController
  def show
    @band = Band.find(params[:id])
    render :show
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to bands_url
    else
      render :new
    end
  end

  def index
    @bands = Band.all
    render :index
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band.update_attributes!(band_params)
    if @band.save
      redirect_to bands_url
    else
      render :edit
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.delete
    redirect_to bands_url
  end

  protected
  def band_params
    params.require(:band).permit(:name)
  end
end
