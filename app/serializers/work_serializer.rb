class WorkSerializer < ActiveModel::Serializer
  attributes :id, :name, :mileage, :date, :price, :vehicle_id
end
