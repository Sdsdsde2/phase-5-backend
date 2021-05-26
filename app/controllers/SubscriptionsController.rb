class SubscriptionsController < ApplicationController
    def create
        subscription = Subscription.create!(
            user_id: params[:id],
            time: params[:time],
            current_period_start: params[:start],
            current_period_end: params[:end],
            status: params[:status]
        )
    end

    def edit
        subscription = Subscription.find(params[:id])
    end
end