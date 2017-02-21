class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create


    @booking = Booking.new(booking_params)
    # create booking using params
    # set user (current user)
    # set storage (params id)
    # set confirmed to false
    # save cbooking
    # redirect to vbooking paath
      # @currentUser = current_user.id
      # @storage = (param = [id])
      # confirmed ? if true.save!: else Path_booking
    @booking.user = current_user
    @booking.storage = Storage.find(params[:storage_id])
    @booking.save
    redirect_to root_path, notice: "booking completed"
  end

  private

  def booking_params
    params.require(:booking).permit(:time_wanted)
  end
end


