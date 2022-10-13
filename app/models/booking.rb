class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cosplay

  # include PgSearch::Model
  # pg_search_scope :search_full_text, against: {
  #   name: 'A',
  #   cosplay: 'B',
  #   price: 'C'
  # }
end
