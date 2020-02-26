class AddPhotoToJourneys < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :photo, :string
  end
end
