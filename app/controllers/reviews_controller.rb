class ReviewsController < ApplicationController
  def create
    @storage = Storage.find(params[:storage_id])
    @review = Review.new(review_params)
    @review.storage = @storage
    if @review.save
      redirect_to storage_path(@storage)
    else
      render 'storages/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
