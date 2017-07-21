class Game

	attr_reader :player_1, :player_2, :attacker, :defender

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@attacker = player_1
		@defender = player_2
	end

	def attack(target)
		target.take_damage
	end

	def switch_turn
		@attacker, @defender = @defender, @attacker
	end

	def gameover?
		@player_1.hit_points <= 0 ? true : false
		@player_2.hit_points <= 0 ? true : false
	end	
end
