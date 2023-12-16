class FeedController < ApplicationController
  def new
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
    @pictures = Photo.all
  end
end
