class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
      @posts = Post.last(5).reverse
  end

  def json

    #return last 5 in database if no params id given

    if params[:id] == nil
      @posts = Post.last(5).reverse
      render :json => @posts
    else

      # else return 5, params[:id] is the highest

      @posts = Post.where(id: (params[:id].to_i - 6)..(params[:id].to_i - 1)).reverse
      render :json => @posts
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
