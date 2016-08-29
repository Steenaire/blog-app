class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    # redirect_to '/' unless current_user
  end

  def create
    post = Post.new(
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
      )
    if post.save
      redirect_to "/posts/#{post.id}"
    else
      redirect_to '/posts/new'
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(title: params[:title], content: params[:content])
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      redirect_to "/posts/#{@post.id}/edit"
    end
  end

  def destroy
    Post.find_by(id: params[:id]).destroy
    redirect_to '/'
  end

end
