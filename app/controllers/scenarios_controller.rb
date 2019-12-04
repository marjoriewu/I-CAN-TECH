class ScenariosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  before_action :find_event, only: [:show]

  def index
    @scenarios = Scenario.all
  end

  def show
    # raise
    @record = Record.new
  end

  private

  def find_event
    @scenario = Scenario.find(params[:id])
  end

  def event_params
    params.require(:scenario).permit(:title, :description)
  end

end
