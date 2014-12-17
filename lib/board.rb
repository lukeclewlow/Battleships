class Board

	def initialize
		@grid = {}
			("A".."J").to_a.each do |letter|
				(1..10).to_a.each do |number|
					@grid["#{letter}#{number}"] = Cell.new
				end
			end

	end

	def hash_length
		@grid.count
	end

	def array(x,y)
		@grid[x][y]
	end

	def find(x)
		@grid.fetch(x)
	end

	def shoot(coord)
		find(coord).shot
	end

	def place_ship(coord)
		find(coord).place
	end

	def place_ship_horizontal(array)
		array.each { |x| place_ship(x) }
	end

	

end	





