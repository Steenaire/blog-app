class PostCategoriesController < ApplicationController
  def create
    post_category = PostCategory.new(post_id: params[:post_id], category_id: params[:category][:category_id])
    if post_category.save
      redirect_to "/users/#{current_user.id}"
    end
  end
end
