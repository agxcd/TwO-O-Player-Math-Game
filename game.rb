
class Game

#  initial players
  def initialize
    @players = [
      Player.new("Player1"),
      Player.new("Player2")
    ]
    @current_player = 0
  end

# end of the game
# if the player.score = 0 then is not alive
# then end of the game

  def game_over?
      loser = @players.select {|player| player.scores == 0}
      if loser.length > 0
        true
      end
  end
  
  def current_player
    @players[@current_player]
  end

  # switch between players
  def switch_player
    if @current_player == 0
      @current_player = 1
    else
      @current_player = 0
    end
    puts "---------- Switch Player to #{current_player.name}----------"
  end



# print game status
  def print_game_status
    @players.each do |player|
      puts "#{player.name} has #{player.scores} scores"
    end
  end
  # start the game

# link question and player game score
# if the answer != question.answer
# player.mis_answer
  def lose_score
    current_player.mis_answer
  end 
# loop the game until end of the game met

  def run_game
    puts "---------- Game Start ----------"
    until game_over? do 
        @players.each do |player|
          question = Question.new

            if question.answer.to_s == gets.chomp
              puts "---------- Awesome you got the answer ----------"
            else 
              puts "---------- Meh, best luck next time ----------"
              lose_score
            end
            print_game_status
            switch_player
        end 
      end
  end
end