class AnswersController < ApplicationController

  def create
    if @answer.empty?
      @answer = Answer.new
      @answer.user = current_user
      @step = Step.find(params[:step_id])
      @answer.user_answer = params[:user_answer]
      is_right?
      @answer.save
      redirect_to step_path(@step)
    else

      redirect_to step_path(@step)
    end
  end

  def update
    @answer = Answer.find(params[:id])
    @step = Step.find(params[:step_id])
    @answer.user_answer = params[:user_answer]
    @answer.update(params[:answer])
    redirect_to step_path(@step)
  end

  def is_right?
    @answer.is_right = (@answer.user_answer == @step.right_answer)
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer, :is_right)
  end

end
