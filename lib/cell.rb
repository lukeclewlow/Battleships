class Cell

	def initialize
		@occupied = Water.new
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


end
