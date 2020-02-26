class AddPhotoToPassengers < ActiveRecord::Migration[5.2]
  def change
    add_column :passengers, :photo, :string
  end
end
