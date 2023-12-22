class HomeController < ApplicationController
  def index
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
    @pictures = @user.photos.all
  end

  def redirect_to_home
    redirect_to '/home'
  end
end
