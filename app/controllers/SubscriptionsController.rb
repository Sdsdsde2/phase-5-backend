class SubscriptionsController < ApplicationController
    def show
        @subscription = Subscription.find(params[:id])
        render json: @subscription
    end

    def index
        @subscriptions = Subscription.all
        render json: @subscriptions
    end

    def new
        @subscription = Subscription.new
    end

    def create
        @subscription = Subscription.create!(
            user_id: params[:user_id],
            day: params[:day],
            hour: params[:hour],
            minute: params[:minute],
            status: params[:status]
        )
    end

    def update
        @subscription = Subscription.find(params["id"])
        @subscription.update_attribute(:status, params[:status])
    end

    private

    def sub_params
        params.require(:subscription).permit(:id, :user_id, :day, :hour, :minute, :status, :created_at, :updated_at)
    end
end