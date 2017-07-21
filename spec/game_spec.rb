require 'game'

	describe Game do
		subject(:subject) { described_class.new(player, player) }
    let(:player) { double(:player, dead?: true, hit_points: 0)}

		describe '#attack' do
			it "runs the take_damage method on the target" do
				expect(player).to receive (:take_damage)
        subject.attack(player)
      end
		end

    describe '#new' do
      it "takes two arguments when being initialized" #do
			# 	binding.pry
      # 	expect(Game).to respond_to(:new).with(player, player)
      # end
    end

		describe '#gameover?' do
			it "returns true if a player is dead" do
				expect(subject.gameover?).to be true
			end
		end
  end
