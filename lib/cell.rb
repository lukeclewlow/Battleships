class Cell

	def initialize
		@occupied = false 			# Water.new (other way)
		@shot_at = false
	end

	def occupied?
		@occupied
	end

	def shot_at?
		@shot_at
	end
	
	def shot
		@shot_at = true
	end

	def place
		@occupied = true
	end

end
