class PostsController < ApplicationController
  def index
    @title = 'Blog Application';
    @posts = Post.all
  end

  def new

  end

  def show
    @title = 'Find Id Post';
    @post = Post.find(params[:id])
  end

  def create
    #render plain: params[:post].inspect
    @post = Post.new (post_params)

    @post.save
    redirect_to @post
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
