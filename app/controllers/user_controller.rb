class UserController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to users_path
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(name: params[:user][:name], password: params[:user][:password])
        redirect_to users_path
    end
    
    def delete
        @article = User.find(params[:id])
        @article.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :password)
    end
end
