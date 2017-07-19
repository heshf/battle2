require 'Player'

	describe Player do
		subject(:subject) { Player.new('Dave') }

		describe '#name' do 
			it "returns the name of the player" do 
				expect(subject.name).to eq 'Dave'
		end
	end
end