class Badge < ApplicationRecord
  belongs_to :user
  belongs_to :record

  validates :user, uniqueness: {scope: :record}
end
