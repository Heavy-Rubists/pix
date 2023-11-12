class LoginController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        puts params
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to controller: :home, action: :index, notice: "Logged is succesfully"
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
