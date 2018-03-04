class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
<<<<<<< HEAD
    debugger #Can call params[:user], params include name, email, password, password_confirmation keys
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
=======
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save
>>>>>>> signup
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, 
                                 :email, 
                                 :password,     :password_confirmation)
    end
end
