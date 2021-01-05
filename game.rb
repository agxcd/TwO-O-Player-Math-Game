
class Game

#  initial players
# get the name of the players

  def initialize
    @players = [
      Player.new("Player1"),
      Player.new("Player2")
    ]
  end

  # switch between players

# end of the game

# link question and player game score
# if the answer != question.answer
# then the score is deducted 

# if the player.score = 0 then is not alive
# then end of the game

# 


# start the game

# condition if the answer is not the same as question.answer
# player.mis_answer


# loop the game until end of the game met


# print game status
  def print_game_status
  @players.each do |player|
    player.print_player_status
  end

  print_game_status
# 
end 