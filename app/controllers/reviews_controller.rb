class ReviewsController < ApplicationController
    def create
        review = Review.create(review_params)
        render json: review, status: :created
    end
    def index
        reviews = Review.all
        render json: reviews, status: :ok

    end
    

    private
    def review_params
        params.permit(:comment, :rating, :ristorante_id, :user_id)
    end
end
