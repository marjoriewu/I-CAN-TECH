class StepsController < ApplicationController
  before_action :find_event, only: [ :show ]

  def index
    # raise
  end

  def show
    @step.scenario = @scenario
    @steps = Step.all
    # raise
  end

  private

  def find_event
    @step = Step.find(params[:id])
  end

  # def event_params
  #   params.require(:step).permit(:title, :description)
  # end
end
