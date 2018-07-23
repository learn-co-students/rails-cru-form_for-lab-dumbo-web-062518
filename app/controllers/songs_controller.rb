class SongsController < ApplicationController

  def index
    @songs = Song.all
    render :index
  end

  def show
    @song = find_song
    @artist = @song.artist
    @genre = @song.genre
    render :show
  end

  def new
    @song = Song.new
    render :new
  end

  def create
    @song = Song.find_or_create_by(song_params)
    # @song = Song.find_or_create_by(name: song_params[:name])
    # @song.artist = Artist.find_or_create_by(name: song_params[:artist])
    # @song.genre = Genre.find_or_create_by(name: song_params[:genre])
    # @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = find_song
    @artist = @song.artist
    @genre = @song.genre
    render :edit
  end

  def update
    @song = find_song
    @song.update(song_params)
    # @song = find_song
    # @song.artist = Artist.find_or_create_by(name: song_params[:artist])
    # @song.genre = Genre.find_or_create_by(name: song_params[:genre])
    # @song.save
    redirect_to song_path(@song)
  end

  private
  def find_song
    Song.find(params[:id])
  end
  # def song_params
  #   params.require(:song).permit(:name, :artist, :genre)
  # end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
