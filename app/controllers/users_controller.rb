class UsersController < ApplicationController

  def index
    @users = User.all
  end 

  def new
    
  end

  def create  
    
    @user = User.new(whitelisted_user_params)

    if @user.save
      redirect_to root_path      
    else
      render :new
    end    
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    
    @user = User.find(params[:id])
    
    @user.username = params[:username]
    @user.email = params[:email]
    @user.password = params[:password]
    
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def whitelisted_user_params
      params.require(:user).permit(:username,:email,:password)
   end
end
