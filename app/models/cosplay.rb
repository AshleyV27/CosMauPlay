class Cosplay < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
end
