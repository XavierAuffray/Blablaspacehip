class Reservation < ApplicationRecord
  belongs_to :passenger
  belongs_to :journey
  validate :number_seat_left

  def number_seat_left
    if journey.seats_left <  amount_of_passengers
          errors.add(:amount_of_passengers, "can't be over amount of seats left")
    end
  end
end
