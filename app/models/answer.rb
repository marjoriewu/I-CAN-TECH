class Answer < ApplicationRecord
  belongs_to :step
  belongs_to :user
end
