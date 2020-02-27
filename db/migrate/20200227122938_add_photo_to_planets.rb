class AddPhotoToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :photo, :string
  end
end
