class Passenger < ApplicationRecord
  has_many :reservations
  has_many :journeys, through: :reservations
  validates :name, presence: true
end
