class ConfirmationController < ApplicationController
    def confirm_email
        user = User.find_by_confirm_token(params[:id])
        if user
          user.email_activate
          puts "Welcome to the Sample App! Your email has been confirmed. sign in to continue."
          redirect_to controller: :home, action: :index
        else
          puts "Sorry. User does not exist"
          redirect_to controller: :registration, action: :new
        end
      end
end
