class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :new ]
  def create
    new_post = current_user.posts.build(post_params)
    if new_post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
