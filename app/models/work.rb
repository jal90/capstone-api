class Work < ApplicationRecord
  # belongs_to :vehicle
  has_many :users, through: :records
  has_many :records
end
