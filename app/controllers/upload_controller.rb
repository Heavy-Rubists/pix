class UploadController < ApplicationController
    protect_from_forgery with: :exception

    def new
    end

    def create
        @photo = Photo.create! photo_params
        redirect_to controller: :home, action: :index, notice: "Photo added succesfully!"
    end

    def destroy
        @photo = Photo.find(params[:id])
        @photo.destroy
        redirect_to controller: :home, action: :index, notice: "Photo deleted succesfully."
    end

    private
    def photo_params
        params.require(:photo).permit(:image, :description).merge(:user_id => session[:user_id])
    end
end
