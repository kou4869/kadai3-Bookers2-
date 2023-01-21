class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?


  def show
  end

  def index
  end

  def edit
  end
  
end
