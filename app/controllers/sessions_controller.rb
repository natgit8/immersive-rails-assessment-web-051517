class SessionsController < ApplicationController

  def welcome
  end

  def new
  end

  def create
    @user = User.find(name: params[:user][:name])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id

      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to welcome_path
  end

end
