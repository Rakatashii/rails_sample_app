class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    #debugger #Can call params[:user], params include name, email, password, password_confirmation keys
    #debugger
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save
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
