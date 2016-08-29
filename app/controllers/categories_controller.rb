class CategoriesController < ApplicationController

  def new
  end

  def create
    category = Category.new(name: params[:name])
    if category.save
      redirect_to '/'
    else
      redirect_to '/categories/new'
    end
  end

end
