class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    p post_params
    redirect_to posts_url
  end

  def index
    @posts = Post.last(5).reverse
    render :json => @posts
  end

  private

  def post_params
    params.require(:post).permit(:message, :users_id)
  end
end
