class Board

	def initialize
		@grid = ("A".."J").map{|x| (1..10).map{ |y| x + y.to_s }}
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

end	