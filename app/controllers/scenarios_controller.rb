class ScenariosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  before_action :find_scenario, only: [:show]

  def index
    @scenarios = Scenario.all.order(id: :asc)
  end

  def show
    # raise
    @record = Record.new
  end

  private

  def find_scenario
    @scenario = Scenario.find(params[:id])
  end
end
