class Driver < ApplicationRecord
  has_many :journeys, dependent: :destroy
  has_many :reservations, through: :journeys
  validates :name, presence: true, uniqueness: true
end
