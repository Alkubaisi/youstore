class UsersController < ApplicationController
 before_filter :authenticate_user!
  def show
    # @user = User.find(params[:id])
   end
def dashboard


end


  def edit_profile
    @user = current_user
  end

  def update_profile
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  private

  def user_params
    params.required(:user).permit(:xxx, :yyy)
  end


end
