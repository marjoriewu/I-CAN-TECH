class StepsController < ApplicationController
  before_action :find_step, only: [:show]

  def index
    # raise
    @scenario = Scenario.find(params[:scenario_id])

    @c1 = Step.where(category: 1).first
    @c2 = Step.where(category: 2).first
    @c3 = Step.where(category: 3).first
  end

  def show

    @scenario = @step.scenario
    @c1 = Step.where(category: 1).first
    @c2 = Step.where(category: 2).first
    @c3 = Step.where(category: 3).first
    # raise
    @record = Record.new
    case @step.category
    when 1
      @steps = Step.where(category: 1)
    when 2
      @steps = Step.where(category: 2)
    when 3
      @steps = Step.where(category: 3)
    end
  end

  def update
  end

  private

  def find_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:category)
  end
end
