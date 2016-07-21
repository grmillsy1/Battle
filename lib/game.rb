class Game

attr_reader :player_1, :player_2, :opponent, :attacker

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @attacker = @player_1
    @opponent = @player_2
  end

  def swap_turn
    @attacker, @opponent = @opponent, @attacker
  end

  def attack(player)
    player.receive_damage
  end

end
