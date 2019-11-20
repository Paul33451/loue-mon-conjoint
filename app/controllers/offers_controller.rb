class OffersController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    @offers = Offer.all

  end

  def show
    @offer = Offer.find(params[:id])
  end
  
  def create
    @offer = Offer.new(offer_params)
    @offer.save
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :availability, :price, :active, :place, :category, :photo)
  end

end
