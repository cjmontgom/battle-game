class Game

attr_reader :player1, :player2, :players

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1 , player2]
    @turn = player1
  end

  def attack(player)
    player.attacked
  end

  def switch_attacker
    @players.rotate!
  end

  def dead?
    players.last.hp <= 0
  end

end
