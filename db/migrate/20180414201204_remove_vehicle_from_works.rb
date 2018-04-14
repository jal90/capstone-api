class RemoveVehicleFromWorks < ActiveRecord::Migration[5.1]
  def change
    remove_reference :works, :vehicle, foreign_key: true
  end
end
