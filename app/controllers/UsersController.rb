class UsersController < ApplicationController
    before_action :authorized, only: [:show]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        payload = {user_id: user.id}
        token = encode_token(payload)
        render json: {user: user, jwt: token}
        @user.save
      else  
        redirect :new
      end
    end
  
    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :username, :password, :credits)
    end
end