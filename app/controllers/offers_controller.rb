class OffersController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

@categories = ["Plomberie", "Bricolage", "Jardinage", "Electricite", "Peinture", "Demenagement", "Couture", "Decoration", "Montage meubles", "Electromenager"]

  def index
    if params[:keyword].present?
      @offers = Offer.geocoded.where("title ILIKE ?", "%#{params[:keyword]}%")
      @markers = @offers.map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
          image_url: helpers.asset_url('picto_balai.png')
        }
      end
    elsif params[:query].present?
      @offers = Offer.geocoded.where(category: params[:query])
      @markers = @offers.map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
          image_url: helpers.asset_url('picto_balai.png')
        }
      end
    else
      @offers = Offer.geocoded.all
      @markers = @offers.map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
          image_url: helpers.asset_url('picto_balai.png')
        }
      end
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
     redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :availability, :price, :active, :place, :category, :photo, :date, :address)
  end
end
