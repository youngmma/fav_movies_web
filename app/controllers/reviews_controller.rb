class ReviewsController < ApplicationController
    def create
        review = Review.new
        review.user_id = params[:user_id]
        review.movie_id = params[:movie_id]
        review.rating = params[:rating]
        review.line_summary = params[:line_summary]
        review.save
        redirect_to "/movies/#{review.movie_id}"
    end
end