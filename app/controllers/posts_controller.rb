class PostsController < ApplicationController
  before_action :require_login, only: [ :create, :new ]
  def create
  end

  def new
    @post = Post.new
  end

  def index
  end
  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You should sign in first"
    end
  end
end
