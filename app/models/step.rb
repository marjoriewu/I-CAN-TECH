class Step < ApplicationRecord
  belongs_to :scenario
  has_many_attached :images
  has_one_attached :video
end
