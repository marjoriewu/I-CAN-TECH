class Scenario < ApplicationRecord
  has_many :records
  has_many :steps
end
