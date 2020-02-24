class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :amount_of_passengers

      t.timestamps
    end
  end
end
