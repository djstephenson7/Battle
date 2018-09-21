require './lib/player'

describe Player do
  subject(:daniel){Player.new('Daniel')}
  subject(:jon){Player.new('Jon')}
  context '#initialize' do
    it "returns its name" do
      expect(daniel.name).to eq "Daniel"
    end
  end

  context '#attack' do
    it 'reduces player2 HP by 10' do
      allow(jon).to receive(:receive_damage)
      jon.attack(daniel)
    end
  end

  describe '#hitpoint' do
    it 'returns the hitpoints' do
      expect(jon.hitpoint).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#receive_damage' do
    it 'reduces player hitpoint' do
      expect { daniel.receive_damage }.to change{daniel.hitpoint}.by(-10)
    end
  end
end
