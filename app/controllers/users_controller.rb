class UsersController < ApplicationController

  def index
    @users = User.all
  end 

  def new
    
  end

  def create
  
    #@user = User.new(whitelisted_user_params)
    #@user = User.new(:username => params[:name],
    #                  :email => params[:email],
    #                  :password => params[:password])
    #puts "@@@@@@@@@@@@@@@@@@@@@@@"
    #puts params
    #puts "@@@@@@@@@@@@@@@@@@@@@@@"
    @user = User.new(whitelisted_user_params)

    if @user.save
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PUMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      redirect_to new_user_path      
    else
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PIMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      render :new
    end    
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    @user_updated = User.find(params[:id])
    puts @user_updated
    @user_updated.username = params[:user]

    puts @user_updated.save.errors

    redirect_to root_path
  end

  def whitelisted_user_params
      params.require(:user).permit(:username,:email,:password)
   end
end
