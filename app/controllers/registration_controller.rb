class RegistrationController < ApplicationController
  def new
  end

  def create
    @user = User.new user_params

    redirect_to controller: :home, action: :index
  end
  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end
