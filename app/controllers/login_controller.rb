class LoginController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            if user.email_confirmed
                session[:user_id] = user.id
                redirect_to controller: :home, action: :index, notice: "Logged is succesfully"
            else
                puts "Confirm you email!"
                render :new
            end
            
        else
            puts "Invalid email or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end
