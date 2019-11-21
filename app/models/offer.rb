class Offer < ApplicationRecord
  has_many :bookings
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  @categories = ["Plomberie", "Bricolage", "Jardinage", "Electricite", "Peinture", "Demenagement", "Couture", "Decoration", "Montage meubles", "Electromenager"]
  validates :category, inclusion: { in: @categories }


  # validates :title, presence: true
  # validates :availability, presence: true
  # validates :price, presence: true
  # validates :active, presence: true
  # validates :place, presence: true
  # validates :category, presence: true, inclusion: { in: @categories }
  # validates :user_id, presence: true, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [:title],
    using: {
      tsearch: { prefix: true }
    }

end
