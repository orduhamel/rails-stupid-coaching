class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # <!-- If @question = "I am going to work", @answer "Great!"" -->
    # <!-- Elsif @question contient "?", @answer = "Silly question, get dressed and go to work!" -->
    # <!-- Else @answer = "I don't care, get dressed and go to work!"" -->
    @question = params[:question]
    @answer = params[:answer]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
