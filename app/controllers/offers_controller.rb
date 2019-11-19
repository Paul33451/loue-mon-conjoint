class OffersController < ApplicationController

  def index
    @offers = Offer.all

  end

  # def show
  #   @offer = Offer.find(params[:id])
  # end
  skip_before_action :authenticate_user!, only: [:index]
end
