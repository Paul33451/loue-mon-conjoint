class Offer < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :title, presence: true
  validates :availability, presence: true
  validates :price, presence: true
  validates :active, presence: true
  validates :place, presence: true
  validates :category, presence: true
  validates :user_id, presence: true, uniqueness: true
end
