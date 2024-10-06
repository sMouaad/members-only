class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :new ]
  def create
    current_user = current_user
    current_user.posts.create(post_params)
  end

  def new
    @post = Post.new
  end

  def index
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
