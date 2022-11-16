class Player
  @@total_players = 0
  attr_reader :lifes, :short, :long 

  def initialize 
    @@total_players += 1
    @lifes = 3
    @short = "P#{@@total_players}"
    @long = "Player #{@@total_players}"
  end

  def lose_life
    @lifes -= 1
  end

  def present_score
    "#{@lifes}/3"
  end

  protected
  attr_writer :lifes, :short, :long 

end
