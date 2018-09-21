require './lib/player'

describe Player do
  
  subject(:daniel){Player.new('Daniel')}
  subject(:jon){Player.new('Jon')}
  let(:game){ double :game }

  context '#initialize' do
    it "returns its name" do
      expect(daniel.name).to eq "Daniel"
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
