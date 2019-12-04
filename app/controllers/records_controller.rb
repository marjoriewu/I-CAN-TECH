class RecordsController < ApplicationController
  # before_action :find_step, only: [:new, :create, :update]
  before_action :category, only: [:index, :show, :update]
  def index
    # @scenario = Scenario.find(params[:scenario_id])
    @records = policy_scope(Record).order(updated_at: :desc)
    @steps = Step.all
    # raise
  end

  def show
    # @record = Record.find(params[:id])
    # @user = current_user
    @records = Record.all
    @myrecords = @records.where(user_id: current_user.id)
  end

  def create
    scenario_id = params[:scenario_id]
    @record = Record.where(user_id: current_user.id, scenario_id: scenario_id)
    if @record.empty?
      # create
      @new_record = Record.new
      authorize @record
      @new_record.scenario = Scenario.find(params[:scenario_id])
      @new_record.user = current_user
      @new_record.save
      redirect_to scenario_steps_path(@new_record.scenario_id)
    else
      #update
      @step = Step.where(scenario_id: scenario_id, category: 1).first

      redirect_to step_path(@step)

    end

  end

  def update
    @step = Step.find(params[:step_id])
    scenario = @step.scenario
    @record = Record.where(user_id: current_user.id, scenario_id: scenario.id).last
    if @record.status != 3
      # authorize @record
      case @step.category
      when 3
        status = 3
      when 2
        status = 2
      else
        status = 1 unless @record.status == 2
      end
      @record.update(status: status)
    end
    # authorize @record

    # raise
  end

  private

  def category
    @c1 = Step.where(category: 1).first
    @c2 = Step.where(category: 2).first
    @c3 = Step.where(category: 3).first
  end

  # def record_params
  #   params.require(:record).permit(:status)
  # end
end
