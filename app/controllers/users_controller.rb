class UsersController < ApplicationController
    def index
        @usersAll = User.all
        @query = User.ransack(params[:q])
        @users = @query.result(:distinct => true)
        @users = User.paginate(page:params[:page])
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.create user_params
        if @user.save
            flash[:message] = " You're in! Prepare yourself for some body aching laughs"
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
