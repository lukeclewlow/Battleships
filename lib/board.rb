class Board

	def initialize
		@grid = Array.new(10) {Array.new(10,'~')}
	end

	def column_length
		@grid.count
	end

	def row_length
		@grid[0].length
	end

	def array(x,y)
		@grid[x][y]
	end

	def place_ship(x,y)
		@grid[x][y] << ship
	end

end	