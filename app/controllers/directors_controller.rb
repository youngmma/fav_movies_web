class DirectorsController < ApplicationController

  def index
    @directors = Director.all.order("name asc")
  end

  def show
    the_director_id = params["id"]
    @director = Director.find_by :id => the_director_id
  end

  def destroy
    the_director_id = params["id"]
    m = Director.find_by(:id => the_director_id)
    m.destroy
    redirect_to directors_url
  end

  def new
    #if the genre creation is done from new movie page, then redirect to new movie page after its creations
    if params[:from] == 'new_movie'
      @@redirect_to = new_movie_url
    else
      @@redirect_to = movies_url
    end
  end

  def create
    m = Director.new
    m.name = params["name"]
    m.photo_url = params["photo_url"]
    m.save
    redirect_to @@redirect_to #directors_url
  end

  def edit
    the_director_id = params["id"]
    @director = Director.find_by(:id => the_director_id)
  end

  def update
    the_director_id = params["id"]
    director = Director.find_by(:id => the_director_id)
    director.name = params["name"]
    director.photo_url = params["photo_url"]
    director.save
    redirect_to directors_url
  end

end
