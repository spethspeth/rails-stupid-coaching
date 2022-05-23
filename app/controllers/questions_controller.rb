class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer_enhanced(question)
    question == question.upcase ? answer = 'I can feel your motivation! ' : answer = ''
    question.downcase!
    if question == 'i am going to work right now!'
      return 'Great!'
    elsif question.include? '?'
      answer = "#{answer}Silly question, get dressed and go to work!"
    else
      answer = "#{answer}I don't care, get dressed and go to work!"
    end

    @answer = answer
  end
end
