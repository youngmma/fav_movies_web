class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to root_url, notice: "Goodbye."
  end

  def create
    email_address = params[:email]
    user = User.find_by(email: email_address)
    if user
      # determines if the user is admin user (name: admin) 
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        session[:admin_user] = user.admin_user
        
        redirect_to root_url, notice: "Welcome, #{user.name}"
      else
        redirect_to root_url, notice: "Bad Password"
      end
    else
       redirect_to root_url, notice: "Unknown Email Address"
    end
  end

end
