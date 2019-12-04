class RecordsController < ApplicationController
  # before_action :find_step, only: [:new, :create, :update]
  def index
    # @scenario = Scenario.find(params[:scenario_id])
    @records = policy_scope(Record).order(updated_at: :desc)
  end

  # def new
  #   @record = Record.new
  # end

  def create
    @record = Record.new
    authorize @record
    @record.scenario = Scenario.find(params[:scenario_id])
    @record.user = current_user
    @record.save
    redirect_to scenario_steps_path(@record.scenario.id)

  end


  def update
    @step = Step.find(params[:step_id])
    scenario = @step.scenario
    @record = Record.where(user_id: current_user.id, scenario_id: scenario.id).last
    authorize @record
    @c1 = Step.where(category: 1).first
    @c2 = Step.where(category: 2).first
    @c3 = Step.where(category: 3).first

    case @step.category
    when 1
      status = 1
    when 2
      @steps = Step.where(category: 2)
      status = 2
    when 3
      @steps = Step.where(category: 3)
      status = 3
    end
    @record.update(status: status)
  end

  private

  # def record_params
  #   params.require(:record).permit(:status)

  # end
end
