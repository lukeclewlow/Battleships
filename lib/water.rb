class Water

	def initialize
		@contains_ship = false
	end

	def contain_ship?
		@contains_ship
	end

	def place
		@contains_ship = true
	end

end