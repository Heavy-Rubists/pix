class RegistrationController < ApplicationController
  def new

  end

  def create
    @user = User.new user_params
    if @user.save && @user.valid?
      RegistrationMailer.registration_confirmation(@user).deliver
      session[:user_id] = @user.id
      redirect_to controller: :login, action: :new
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password,:password_confirmation)
  end
end
