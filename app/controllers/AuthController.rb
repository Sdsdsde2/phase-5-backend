class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
        else
            render json: {failure: "Log in failed! Please check your username or password and try again..."}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "No user logged in"}
        end
    end
end