class HomeController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    @pictures = @user.photos.all
    end
  end
end
