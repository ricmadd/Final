class UsersController < ApplicationController

  def newuser
  end

  def create
    newuser = User.new
    newuser.firstname = params["firstname"]
    newuser.password = params["password"]
    newuser.save
    redirect_to "/", notice: "Account created. Please sign into your new account"
  end

  def show
     @user = User.find_by(:id => params[:user_id])
     if @user.id != session[:user_id]
       redirect_to root_url, notice: "Try again"
     end
   end

end




