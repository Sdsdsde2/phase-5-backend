class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def new
        review = Review.new
    end

    def create
        review = Review.create!(
            subscription_id: params[:subscription_id],
            user_id: params[:user_id],
            rating: params[:rating],
        )
    end
end