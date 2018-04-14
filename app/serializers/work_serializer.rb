class WorkSerializer < ActiveModel::Serializer
  attributes :id, :name, :mileage, :date, :vehicle_id
end
