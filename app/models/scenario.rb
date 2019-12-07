class Scenario < ApplicationRecord
  has_many :records, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_one_attached :image

  def image_url
    if image.attachment.nil?
      return 'http://lorempixel.com/100/100'
    else
      return image.blob.service_url
    end
  end
end
