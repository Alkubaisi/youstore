class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    # create booking using params
    # set user (current user)
    # set storage (params id)
    # save cbooking
  end
end
