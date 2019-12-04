class RecordsController < ApplicationController
  # before_action :find_step, only: [:new, :create, :update]
  before_action :category, only: [:index, :show, :update]
  def index
    # @scenario = Scenario.find(params[:scenario_id])
    @records = Record.all
    @steps = Step.all
    # raise
  end

  def show
    # @record = Record.find(params[:id])
    @user = current_user
    @records = Record.all
    @myrecords = @records.where(user_id: current_user)

  end

  def create
    if @record.nil?
      @record = Record.new
      @record.scenario = Scenario.find(params[:scenario_id])
      @record.user = current_user

      @record.save
      redirect_to scenario_steps_path(@record.scenario.id)

    elsif
      redirect_to  step_record_path(params[:id])
    end

  end


  def update
    @step = Step.find(params[:step_id])
    scenario = @step.scenario
    @record = Record.where(user_id: current_user.id, scenario_id: scenario.id).last


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
