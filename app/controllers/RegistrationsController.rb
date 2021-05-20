class RegistrationsController.rb < ApplicationController
    def create
        user = User.create!(
            name: params[:name],
            username: params[:username],
            password: params[:password],
            password_confirmation: params[:password],
            credits: 50
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: 500 }
        end
    end
end