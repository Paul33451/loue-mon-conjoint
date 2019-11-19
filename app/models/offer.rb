class Offer < ApplicationRecord
  has_many :bookings
  belongs_to :user

  @categories = ["Plomberie", "Bricolage", "Jardinage", "Electricite", "Peinture", "Demenagement", "Couture", "Decoration", "Montage meubles", "Electromenager"]

  validates :category, inclusion: { in: @categories }

  mount_uploader :photo, PhotoUploader

end
