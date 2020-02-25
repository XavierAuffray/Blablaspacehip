class AddPassengerToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :passenger, foreign_key: true
  end
end
