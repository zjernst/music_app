class AlbumsController < ApplicationController
  def new
    @ablum = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      render :new
    end
  end

  def destroy
    @album.find(params[:id])
    @album.delete
    redirect_to bands_url
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def update
    @album.update_attributes!(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      render :edit
    end
  end
end
