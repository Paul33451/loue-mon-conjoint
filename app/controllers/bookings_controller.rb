class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :accept]
  def show
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to offer_booking_path(@offer, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_path(current_user)
  end

  def accept
    @booking.status = true
    render :show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:adress, :date, :offer_id)
  end
end
