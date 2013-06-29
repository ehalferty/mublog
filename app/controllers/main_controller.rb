class MainController < ApplicationController

  def dashboard
    @posts = current_user.posts.page(params[:page]).per(2)
  end
end
