class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def article_params
    params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :username, :phone_number, :first_name, :last_name, :photo, :photo_cache)
  end
end
