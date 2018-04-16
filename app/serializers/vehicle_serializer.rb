class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :mileage, :user_id
end
