require 'game'

describe Game do
  let (:subject) { Game.new('Ted', 'Barry') }

  describe '#defaults' do
    it 'should initialize with two players' do
      expect(subject.player1).to eq 'Ted'
    end

    it 'should initialize with two players' do
      expect(subject.player2).to eq 'Barry'
    end
  end

  describe '#attack' do
    let(:player1) { double(:player, attacked: true) }

    it 'should attack another player' do
      expect{subject.attack(player1)}.to_not raise_error
    end
  end

  describe '#switch_attacker' do

    it 'should switch the current attacker' do
      subject.switch_attacker
      expect(subject.players.first).to eq 'Barry'
    end
  end

end
