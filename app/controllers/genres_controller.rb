class GenresController < ApplicationController
  before_action :require_login, only: [:new]

  def require_login
    if session[:user_id].blank?
      redirect_to movies_url, notice: "You must be logged in to perform this action" 
      return
    end
  end

  def index
    @genres = Genre.all
    redirect_to movies_url
  end

  def new
    @genre = Genre.new
    
    #if the genre creation is done from new movie page, then redirect to new movie page after its creations
    if params[:from] == 'new_movie'
      @@redirect_to = new_movie_url
    else
      @@redirect_to = movies_url
    end
  end

  def create
    m = Genre.new
    # if(:name.nil?)
      m.name = params[:name]
      m.save
      redirect_to @@redirect_to
    
  end

  # DELETE /genres/1
  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy

    redirect_to genres_url
  end
end
