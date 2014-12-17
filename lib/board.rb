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
		if find(coord).shot_at? == true
			raise "#{coord} has already been shot at, please choose another Co-ordinate!"
		else
			if find(coord).occupied? == true
				find(coord).shot
				"Hit"
			else
				"Miss"
			end
		end
	end

	def placement(coord, ship)
		find(coord).place(ship)
	end

	def place_ship(array, ship)
		array.each { |x| placement(x, ship) }
	end

end	
