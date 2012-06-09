class QuestionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @questions = current_user.questions
  end
  
  def create
    @question = current_user.questions.build(text: params[:question])
    @question.save
    flash[:notice] = "Successfully created question..."
    redirect_to root_path
  end
end