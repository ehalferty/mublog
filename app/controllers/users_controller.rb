class UsersController < ApplicationController
  # GET /users
  # GET users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json {render json: @users }
    end
  end

  # GET user
  # GET users/1
  # GET users/1.json
  def show
    @user = !params[:id].nil? ? User.find(params[:id]) : current_user
    @posts = @user.posts.page(params[:page]).per(2)

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end
end
