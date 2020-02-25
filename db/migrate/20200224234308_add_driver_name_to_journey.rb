class AddDriverNameToJourney < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :driver_name, :string
  end
end
