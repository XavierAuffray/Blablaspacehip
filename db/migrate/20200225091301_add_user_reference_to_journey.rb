class AddUserReferenceToJourney < ActiveRecord::Migration[5.2]
  def change
    add_reference :journeys, :driver, null: false
  end
end
