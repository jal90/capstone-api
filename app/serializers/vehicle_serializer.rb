class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :mileage, :user_id, :works

  # TODO: get a better understanding of exactly what's happening here
  def works
    object.works.pluck(:id)
  end
end
