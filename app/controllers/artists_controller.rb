class ArtistsController < ApplicationController
  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    # binding.pry
    @artist = Artist.create(artist_params)

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    # binding.pry
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    redirect_to artist_path(@artist)
  end

  def destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
