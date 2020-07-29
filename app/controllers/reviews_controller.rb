class ReviewsController < ApplicationController
    def new
        # get a blank restaurant record
        @review = Review.new
      end

      
    def create
        @review = Review.new(review_params)
    
        #save record
        @review.save
    
        #redirect to another page
        redirect_to review_path(@review)
  
      #   if @review.save
      #     redirect_to restaurant_path(@review)
      #   else
      #     render :new
      #   end
      end
end
