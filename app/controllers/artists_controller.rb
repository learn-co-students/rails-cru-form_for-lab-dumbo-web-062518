class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render :index
  end

  def show
    @artist = find_artist
    render :show
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_artist
    render :edit
  end

  def update
    @artist = find_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private
  def find_artist
    Artist.find(params[:id])
  end
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
