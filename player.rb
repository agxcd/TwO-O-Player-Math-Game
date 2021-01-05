class Player
  attr_accessor :scores

  attr_reader :name

  def initialize(name)
    @name = name
    @scores = 3
  end

  def mis_answer
    @scores -= 1
  end

  # 
  def print_player_status
      puts "#{player.name} has #{player.scores} scores"
  end
end