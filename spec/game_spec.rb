require 'game'

	describe Game do
		subject(:subject) { described_class.new(player, player) }
    let(:player) { double(:player) }

		describe '#attack' do
			it "runs the take_damage method on the target" do
				expect(player).to receive (:take_damage)
        subject.attack(player)
      end
		end

    describe '#new' do
      it "takes two arguments when being initialized" #do
      #  expect(Game).to respond_to(:new).with(player)
      #end
    end
  end
