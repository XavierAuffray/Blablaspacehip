class AddEmailToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :email, :string
  end
end
