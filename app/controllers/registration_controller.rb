class RegistrationController < ApplicationController
  def new
  end

  def create
    @user = User.new user_params
    if @user.save && @user.valid?
      session[:user_id] = @user.id
      redirect_to controller: :home, action: :index
    else
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end
