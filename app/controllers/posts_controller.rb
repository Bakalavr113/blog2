class PostsController < ApplicationController
  def index
  end
  def new
  	@post=Post.new
  end
  def create
    @post=Post.new(posts_params)
  	if @post.save
  		redirect_to root_path
  	end
  end
  private
  def posts_params
  	params.require(:post).permit(:username, :title, :body)
  end
end
