class Player
	attr_reader :name, :hit_points

	def initialize(name)
		@name = name
		@hit_points = 60
	end

	def take_damage
		@hit_points -= 10
	end

	def dead?
		@hit_points <= 0 ? true : false
	end
end
