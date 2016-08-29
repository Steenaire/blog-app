class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(
      name: params[:name], 
      email: params[:email], 
      password: params[:password], 
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      redirect_to "/users/#{user.id}"
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: @user.id)
  end

end
