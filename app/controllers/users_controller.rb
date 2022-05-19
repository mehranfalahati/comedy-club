class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create user_params
        if @user.save
            flash[:message] = " ✔️ Thank you for signing up!"
            redirect_to root_path
        else
            render :new
        end
    end

    def show

    end

    private
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name)
    end

end
