require 'player'

describe Player do

  describe '#name' do
    subject { Player.new('test_name') }

    it 'should give the players name' do
      expect(subject.name).to eq 'test_name'
    end
  end
end
