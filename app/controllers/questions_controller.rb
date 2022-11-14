class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @student_answer = params['answer']
    if @student_answer == 'I am going to work'
      @answer = 'Great'
    elsif @student_answer.slice(-1) == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care go back to work'
    end
  end
end
