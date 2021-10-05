class UsersController < ApplicationController
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
    @user = User.new
    puts params

    if @user.save
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PUMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      redirect_to new_user_path      
    else
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PIMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      render :new
    end    
  end

  def whitelisted_user_params
      params.require(:user).permit(:username,:email,:password)
   end
end
