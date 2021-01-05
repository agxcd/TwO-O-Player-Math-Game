# Create a 2-Player math game where players take turns to answer 
# simple math addition problems. A new math question is generated 
# for each turn by picking two numbers between 1 and 20. The player 
# whose turn it is is prompted the question and must answer 
# correctly or lose a life.

# Remember that objects are important for two things:

# State: Storing data describing themselves (variables)
# Behavior: Defining actions that can be performed on them (methods)


class Question
  attr_accessor :randomnum1 :randomnum2 :question, :answer
  def initialize
      @randomnum1 = rand(1..20)
      @randomnum2 = rand(1..20)
      @question = @randomnum1 + @randomnum2
      @answer = @question
      puts "What is the total of #{randomnum1} + #{randomnum2}?"
  end
end