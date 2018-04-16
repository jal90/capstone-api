# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :vehicles
  has_many :works, through: :vehicles
end
