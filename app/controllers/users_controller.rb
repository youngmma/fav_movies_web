class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if session[:user_id] != @user.id
      redirect_to root_url, notice: "No way!"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.name == "admin"
      @user.admin_user = "true"
    end

    @user.save
    if @user.save
      # saves admin user into a session
      session[:user_id] = @user.id
      session[:admin_user] = @user.admin_user
      redirect_to root_url, notice: "Sign up is done. Enjoy!"

    else
      render "new"
    end
  end

end
