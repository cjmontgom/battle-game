require 'player'

describe Player do

  describe '#name' do
    subject { Player.new('test_name') }

    it 'should give the players name' do
      expect(subject.name).to eq 'test_name'
    end
  end

  describe '#hp' do
    subject { Player.new('test_name') }

    it 'should start with 100 HP' do
      expect(subject.hp).to eq 100
    end
  end
end
