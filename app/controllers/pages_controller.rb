class PagesController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create user_params
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end

end
