class Board

	def initialize
		@grid = {}
			("A".."J").to_a.each do |letter|
				(1..10).to_a.each do |number|
					@grid["#{letter}#{number}"] = Cell.new
				end
			end

	end

	def column_length
		@grid.count
	end

	def row_length
		@grid.length
	end

	def array(x,y)
		@grid[x][y]
	end

	def find(x)
		@grid.fetch(x)
	end

end	