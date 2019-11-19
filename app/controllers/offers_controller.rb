class OffersController < ApplicationController

  def index
    @offers = Offer.all

  end

  def show
    @offer = Offer.find(params[:id])

  end
  skip_before_action :authenticate_user!, only: [:index, :show]

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :photo)
  end
end
