class PostsController < ApplicationController
  def index
    @title = 'Blog Application';
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @title = 'Find Id Post';
    @post = Post.find(params[:id])
  end

  def create
    #render plain: params[:post].inspect
    @post = Post.new (post_params)

    if(@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    @title = 'Edit Post'
  end

  def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
