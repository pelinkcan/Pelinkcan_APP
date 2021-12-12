class UsersController < ApplicationController

    def index 
      @user = User.find(params[:id])
      @userinfo = current_user.id
    end
end
