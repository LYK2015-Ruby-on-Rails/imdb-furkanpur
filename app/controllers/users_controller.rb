class UsersController < ApplicationController
  def edit
    @user = current_user.update(params.require(:user).permit(:avatar))

    redirect_to root_path
  end
end
