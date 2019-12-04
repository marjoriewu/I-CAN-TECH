class Step < ApplicationRecord
  belongs_to :scenario
  has_one_attached :image
  has_one_attached :video
end
