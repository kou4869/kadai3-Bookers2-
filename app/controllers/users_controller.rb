class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[id])
  end
  
  def update
    @user = User.find(params[id])
    @user.update(user_params)
    redirect_to user_path
  end
  
  private
  
  def user_params
    parame.require(:user). permit(:name, :profile_image, :Introduction)
  end
end
