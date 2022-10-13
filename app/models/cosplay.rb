class Cosplay < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  # include PgSearch::Model
  # pg_search_scope :search_full_text, against: {
  #   booking: 'A',
  #   name: 'B',
  #   price: 'C'
  # }
end
