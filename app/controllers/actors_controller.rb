class ActorsController < ApplicationController

  def index
    @actors = Actor.all.order("name asc")
  end

  def show
    the_actor_id = params["id"]
    @actor = Actor.find_by :id => the_actor_id
  end

  def destroy
    the_actor_id = params["id"]
    m = Actor.find_by(:id => the_actor_id)
    m.destroy
    redirect_to actors_url
  end

  def new
  end

  def create
    m = Actor.new
    m.name = params["name"]
    m.photo_url = params["photo_url"]
    m.save
    redirect_to actors_url
  end

  #Failed implmentation of movie list of the actor
  # def create
  #   actor_name = params["name"]
  #   movie_id = params["movie_id"]
  #   m = Actor.new
  #   m.name = actor_name
  #   m.photo_url = params["photo_url"]
  #   m.save

  #   r = Role.new
  #   r.actor_id = Actor.find_by(name: actor_name).id
  #   r.movie_id = Movie.find_by(id: movie_id).id
  #   r.save
    
  #   redirect_to actors_url
  # end

  def edit
    the_actor_id = params["id"]
    @actor = Actor.find_by(:id => the_actor_id)
  end

  def update
    the_actor_id = params["id"]
    actor = Actor.find_by(:id => the_actor_id)
    actor.name = params["name"]
    actor.photo_url = params["photo_url"]
    actor.save
    redirect_to actors_url
  end

end
