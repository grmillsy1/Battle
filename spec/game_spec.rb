require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, hit_points: 10 }
  let(:player_2) { double :player, hit_points: 0  }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'stores the name of player_1' do
     expect(game.player_1).to eq player_1
    end
  end
  describe '#player_2' do
    it 'stores the name of player_2' do
      expect(game.player_2).to eq player_2
    end
  end
  describe '#attacker' do
    it 'starts as player 1' do
      expect(game.attacker).to eq player_1
    end
  end
  describe '#opponent' do
    it 'starts as player 2' do
      expect(game.opponent).to eq player_2
    end
  end
  describe '#swap_turn' do
    it 'swaps attacker and opponent' do
      game.swap_turn
      expect(game.attacker).to eq player_2
      expect(game.opponent).to eq player_1
    end
  end

  describe '#loser' do
    it 'returns player 2 when hp = 0' do
      expect(game.loser).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'returns true when game is over' do
      expect(game.game_over?).to eq true
    end
  end


end
