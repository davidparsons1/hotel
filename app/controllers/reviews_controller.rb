class ReviewsController < ApplicationController
before_filter :authorise

def create
 @hotel = Hotel.find params[:hotel_id]
 @review = @hotel.reviews.new(review_params)
 @review.guest_id = @current_guest.id 
 @review.save 

respond_to do |format|
format.html { redirect_to @hotel }
 end
end

private
def review_params 
 params.require(:review).permit(:content, :hotel_id, :guest_id, :stars)
end

end
