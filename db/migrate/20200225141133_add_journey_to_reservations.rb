class AddJourneyToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :journey, foreign_key: true
  end
end
