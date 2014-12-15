class Board

	def initialize
		@grid = Array.new(10) {Array.new(10,'~')}
	end

	def grid_length
		@grid.count
	end

end	