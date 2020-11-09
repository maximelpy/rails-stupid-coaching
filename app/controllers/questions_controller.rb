class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'
      'Great!'
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

# query = params[:Ask!]
# @members = %w[Genna Brett Tatiana Romario Alain Alexandre Sarah]
# if query.present?
#   @members = @members.select { |name| name.downcase == query.downcase }
# end
