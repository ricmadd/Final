class SessionsController < ApplicationController
  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "You've logged out succesfully"
  end

  def create
    user = User.find_by(:firstname => params[:firstname])

    if user.present?
      if user.password == params[:password]
        session[:name] = user.firstname
        redirect_to "/projects" , notice: "Welcome to your WBS Builder"
      else
        redirect_to root_url, notice: "Wrong Password."
      end
    else
      redirect_to root_url, notice: "Unknown user."
    end
  end

end
