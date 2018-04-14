class Record < ApplicationRecord
  belongs_to :user, inverse_of: :records
  belongs_to :work, inverse_of: :records
end
