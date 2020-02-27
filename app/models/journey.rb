class Journey < ApplicationRecord
  has_many :passengers, through: :reservations
  has_many :reservations
  has_one :planet
  belongs_to :driver
  validates :departure, presence: true
  validates :arrival, presence: true
  validates :date, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :available_seats, presence: true, numericality: { only_integer: true }
  validates :spaceship_name, presence: true
end
