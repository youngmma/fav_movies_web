class MoviesController < ApplicationController
  before_action :require_login, only: [:new, :destroy, :edit]

  def require_login
    if session[:user_id].blank?
      redirect_to movies_url, notice: "You must be logged in to perform this action" 
      return
    end
  end

  def index
    if params[:genre].present?
      g = Genre.find_by(name: params[:genre])
      @movies = Movie.all.where(:genre_id => g.id)
      @genre = params[:genre]
    else
      @movies = Movie.order('year asc')
    end
  end

  def show
    the_movie_id = params["id"]
    @movie = Movie.find_by :id => the_movie_id
    @reviews = Review.where(:movie_id => @movie.id).order('created_at desc')
    # @user = User.find_by :id => session[:user_id] 
  end

  def destroy
    the_movie_id = params["id"]
    m = Movie.find_by(:id => the_movie_id)
    m.destroy
    redirect_to movies_url
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.plot = params[:plot]
    @movie.image_url = params[:poster_url]
    @movie.director_id = params[:director_id]
    @movie.genre_id = params[:genre_id]
    @movie.trailer_url = params[:trailer_url]
    # @movie.save

    if @movie.save
      redirect_to movies_url, notice: "New movie has been added!"
    else
      render "new"
    end

    # a = Actor.new
    # a.name = params[:actor_name]
  end

  def edit
    the_movie_id = params["id"]
    @movie = Movie.find_by(:id => the_movie_id)
  end

  def update
    the_movie_id = params["id"]
    movie = Movie.find_by(:id => the_movie_id)
    movie.title = params["title"]
    movie.year = params["year"]
    movie.plot = params["plot"]
    movie.director_id = params["director_id"]
    movie.image_url = params["poster_url"]
    movie.genre_id = params["genre_id"]
    movie.trailer_url = params["trailer_url"]
    movie.save
    #if actor is not related to this movie
      #then make it related
    #end 

    redirect_to movies_url
  end

end
