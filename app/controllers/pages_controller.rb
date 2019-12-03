class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  # def home
  #   @scenarios = Scenario.all
  # end
end
