class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.string :departure
      t.string :arrival
      t.datetime :date
      t.integer :price
      t.integer :available_seats
      t.string :spaceship_name

      t.timestamps
    end
  end
end
