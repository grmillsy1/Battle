require_relative 'player'

class Game

attr_reader :player_1, :player_2, :opponent, :attacker, :power

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @attacker = @player_1
    @opponent = @player_2
  end

  def self.create(player_1, player_2)
    @game= Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def swap_turn
    @attacker, @opponent = @opponent, @attacker
  end

  def loser
    @player_1 if player_1.hit_points <= 0
    @player_2 if player_2.hit_points <= 0
  end

  def game_over?
    !!loser
  end

  def amount
    power = rand(1..10)
    @power = power
  end

  def attack(player)
    player.receive_damage(amount)
  end

end
