class RemovePhotoFromPlanets < ActiveRecord::Migration[5.2]
  def change
    remove_column :planets, :photo, :string
  end
end
