class RegistrationController < ApplicationController
  def new
  end

  def create
    @user = User.new user_params
    if @user.valid?
      session[:user_ID] = @user.ID
      redirect_to controller: :home, action: :index
    else
      redirect_to :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end
