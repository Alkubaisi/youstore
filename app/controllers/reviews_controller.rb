class ReviewsController < ApplicationController

  def create
    @storage = Storage.find(params[:storage_id])
    @review = Review.new(review_params)
    @review.storage = @storage
   if @review.save
      respond_to do |format|
        format.html {redirect_to storage_path(@storage)}
       format.js
      end
    else
      respond_to do |format|
        format.html {render 'storages/show'}
        format.js #create.js.erb
      end
    end
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to storage_path(@review.storage), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
