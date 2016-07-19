require 'player'

describe Player do

subject(:wayne) {Player.new('Wayne')}

  describe '#name' do
    it 'returns the name' do
    expect(wayne.name).to eq 'Wayne'
    end
  end
end
