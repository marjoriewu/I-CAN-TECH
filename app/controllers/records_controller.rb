class RecordsController < ApplicationController
  # before_action :category, only: [:index, :update]
  # Note :: There is no new and edit action as there is no user input required, all records will be created or updated in the create/ update action

  def index
    @records = policy_scope(Record).order(updated_at: :desc)
    # this looks for all records under the current login user
    @myrecords = @records.where(user_id: current_user.id)
    # the following codes looks for all steps in each category passed in to the _record.html in records#view
    @demos = Step.where(category: 1)
    @walkthroughs = Step.where(category: 2)
    @practices = Step.where(category: 3)
  end

  def show

    # raise
  end

  def edit
    @record = Record.find(params[:id])
  end

  def create
    scenario_id = params[:scenario_id]
    @record = Record.where(user_id: current_user.id, scenario_id: scenario_id)
    if @record.empty?
      # create new record if there's no current matching record for current_user and selected scenario
      @new_record = Record.new
      authorize @record
      @new_record.scenario = Scenario.find(params[:scenario_id])
      @new_record.user = current_user
      @new_record.save
      @scenario = @new_record.scenario_id
      # @record_id = params[:record_id]
      @badge = Badge.create(user_id: current_user.id, record_id: @new_record.id, title: @new_record.scenario.title, obtained: false)
      step = Step.where(scenario_id: scenario_id, category: 1).first
      redirect_to step_path(step.id)
    else
      #redirect to update action if there is an existing record (started scenario but did not complete Demo)
      step = Step.where(scenario_id: scenario_id, category: 1).first
      redirect_to step_path(step.id)
    end
  end

  def update
    # updates status of Record#status to 1, 2 or 3 depending on which category is completed
    # reset_session
    @step = Step.find(params[:step_id])
    @scenario = @step.scenario
    # use session to identify the last step of practice, so that it can render the record edit page(congratulations page):views/recored/edit.html.erb
    if session[:record_id]
      @record = Record.find(session[:record_id])
      session[:record_id] = nil  # destroy session after it is used
    else
      @record = Record.where(user_id: current_user.id, scenario_id: @scenario.id).last
    end

    #this step checks for the current category stored in record#status and updates the record#status to the next category// upon completing all categories in a scenario, record#status will remain at 3 even if uyser choose to repeat demo and walkthrough

    # authorize @record
    case @step.category
    when 3
      if @record.status == 2
        @record.update(status: 3)
      end
    when 2
      if @record.status == 1
        @record.update(status: 2)
      end
    else
      if @record.status == 0
        @record.update(status: 1)
      end
    end
    # upon updating the record#status, user will be directed to continue on the next category
    next_category = @step.category + 1
    next_step = Step.where(scenario_id: @scenario.id, category: next_category).first
    # authorize @record
    # if user has not completed practice (category: 3), this will render the next category show page
    if next_category <= 3
      redirect_to step_path(next_step.id)
    else
      # if user has completed all 3 categories, they will be awarded with a new badge! and be directed to Me page to see their badges
      @badge = Badge.update(user_id: current_user.id, record_id: @record.id, title: @record.scenario.title, obtained: true)
      redirect_to badges_path
    end

  end

  def badges
    @myrecords = Record.all.where(user_id: current_user.id)
  end

  private


end
