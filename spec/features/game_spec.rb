require './lib/game'

describe Game do

  subject(:daniel) { Player.new('Daniel') }
  subject(:jon) { Player.new('Jon') }
  subject(:game) { described_class.new }
  
    context '#attack' do
    it 'reduces player2 HP by 10' do
      allow(jon).to receive(:receive_damage)
      game.attack(daniel)
    end
  end
end
