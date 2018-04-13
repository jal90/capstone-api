class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :user_id
end
