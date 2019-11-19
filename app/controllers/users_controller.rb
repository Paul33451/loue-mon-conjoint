class UsersController < ApplicationController

  def article_params
    params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :username, :phone_number, :first_name, :last_name, :photo)
  end
end
