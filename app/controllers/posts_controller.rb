class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new(
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
      )
    if post.save
      redirect_to "/posts/#{id}"
    else
      redirect_to '/psots/new'
    end
  end

end
