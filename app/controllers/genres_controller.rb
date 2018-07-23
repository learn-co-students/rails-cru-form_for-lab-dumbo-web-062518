class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render :index
  end

  def show
    @genre = find_genre
    render :show
  end

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.find_or_create_by(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_genre
    render :edit
  end

  def update
    @genre = find_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private
  def find_genre
    Genre.find(params[:id])
  end
  def genre_params
    params.require(:genre).permit(:name)
  end

end
