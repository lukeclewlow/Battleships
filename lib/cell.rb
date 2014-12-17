class Cell

	def initialize
		@occupied = false 			# Water.new (other way)
		@shot_at = false
	end

	def ships
		@ships = []
	end

	def shoot
		@ships[0].hit!
	end

	def occupied?
		@occupied
	end

	def shot_at?
		@shot_at
	end
	
	def shot
		@shot_at = true
		shoot
	end

	def place(ship)
		@occupied = true
		ships << ship
	end

end
