class AddArrivalToJourneys < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :arrival, :string
  end
end
