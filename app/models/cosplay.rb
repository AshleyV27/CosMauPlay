class Cosplay < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
