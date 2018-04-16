class Work < ApplicationRecord
  belongs_to :vehicle
  has_many :users, through: :vehicles
end
