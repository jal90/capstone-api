class AddMakeToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :make, :string
    add_column :vehicles, :model, :string
    add_column :vehicles, :year, :integer
    add_column :vehicles, :mileage, :integer
  end
end
