class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @user_tweets = Tweet.where(user_id: @user.id)
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_name: params["user"]["user_name"])
        redirect_to user_path(@user.id)
    end
    
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_name: params["user"]["user_name"])
        redirect_to user_path(@user.id)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
end
