require 'player'

	describe Player do
		subject(:subject) { Player.new('Dave') }

		describe '#name' do
			it "returns the name of the player" do
				expect(subject.name).to eq 'Dave'
		end

		describe '#dead?' do
			it "returns false by default" do
				expect(subject.dead?).to be false
			end

			it "returns true when the player has 0hp" do
				6.times { subject.take_damage }
				expect(subject.dead?).to be true
			end
		end
	end
end
