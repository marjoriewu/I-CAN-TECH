class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :records, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :badges, dependent: :destroy

  after_create :create_badge, only: [:new, :create]

  # Creates Record and Badge for all scenarios upon new user registration
  def create_badge
    scenarios = Scenario.all

    scenarios.each do |scenario|
      record = Record.create!(user_id: self.id, scenario_id: scenario.id, status: 0)
      badge = Badge.create!(user_id: self.id, record_id: record.id, title: scenario.title, obtained: false)
    end
  end

end
