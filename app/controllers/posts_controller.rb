class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :new ]
  def create
    p current_user
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
