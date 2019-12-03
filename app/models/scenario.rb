class Scenario < ApplicationRecord
  has_many :records, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many_attached :images
end
