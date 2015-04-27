class UsersController < ApplicationController
  
<<<<<<< HEAD
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'You are now registered!'
      redirect_to root_path
    else 
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end
  
=======
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
end