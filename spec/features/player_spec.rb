require './lib/player'

describe Player do
  subject(:daniel){Player.new('Daniel')}
  context '#initialize' do
    it "returns its name" do
      expect(daniel.name).to eq "Daniel"
    end
  end
end
