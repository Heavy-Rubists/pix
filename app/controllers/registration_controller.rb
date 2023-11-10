class RegistrationController < ApplicationController
  def new
  end

  def create
    redirect_to controller: :home, action: :index
  end
end
