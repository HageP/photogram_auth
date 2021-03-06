class UsersController < ApplicationController
  def index
    @user = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @user_photos = Photo.where(user_id: current_user.id)

    render("users/show.html.erb")
  end
end
