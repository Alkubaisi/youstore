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

    def new
      @booking = Booking.new
    end

    def accept
      @booking = Booking.find(params[:id])
      @booking.update(status: "accepted")
      redirect_to dashboard_path, notice: "Booking Accepted"
    end

    def decline
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to dashboard_path, notice: "Booking Declined"
    end


    def destroy
      @booking = Booking.find(params[:id]).destroy
      redirect_to dashboard_path
    end

    private

    def booking_params
      params.require(:booking).permit(:from, :to, :price)
    end
  end


