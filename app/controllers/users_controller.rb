class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create 
        user = User.create user_params
        user.save
        redirect_to users_path
    end

    def show

    end

    private
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name)
    end

end
