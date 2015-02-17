class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :assign_user

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render "edit"
    end
  end

  def edit
  end

  private

  def assign_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:gender, :date_of_birth, :first_name, :last_name, :height_in_cm)
  end

end
