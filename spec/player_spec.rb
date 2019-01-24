require 'player'

describe Player do
  subject { Player.new('test_name') }

  describe '#name' do

    it 'should give the players name' do
      expect(subject.name).to eq 'test_name'
    end
  end

  describe '#hp' do

    it 'should start with 100 HP' do
      expect(subject.hp).to eq 100
    end
  end

  describe '#attacked' do

    it 'should reduce the hitpoints by 10' do
      srand(10)
      subject.attacked
      expect(subject.hp).to eq 81
    end
  end

end
