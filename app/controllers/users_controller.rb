class UsersController < ApplicationController
  def new
    
  end

  def create
    @user = User.new(username: params[:name], email: params[:email], password: params[:password])
    puts "@@@@@@@@@@@@@@@@@@@@@@@"
    puts @user
    puts "@@@@@@@@@@@@@@@@@@@@@@@"

    if @user.save
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PUMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      redirect_to new_user_path      
    else
      puts "!!!!!!!!!!!!!!!!!!!!!!!!PIMS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      render :new
    end    
  end
end
