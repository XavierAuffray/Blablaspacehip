class AddPhotoToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :photo, :string
  end
end
