class AddVehicleToWorks < ActiveRecord::Migration[5.1]
  def change
    add_reference :works, :vehicle, foreign_key: true
  end
end
