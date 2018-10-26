class UsersController < ApplicationController
  before_action :authenticate_user!

  # get user/
  def show
    @user = current_user
  end

  # get users/edit
  def edit
    @user = current_user
  end

  # patch users/:id
  def update
    if User.find(params[:id]).update(user_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end
