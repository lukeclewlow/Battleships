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
			find(coord).occupied? == true ? occupied(coord) : unoccupied(coord)
		end
	end

	def occupied(coord)
		find(coord).shot_if_occupied
		"Hit"
	end

	def unoccupied(coord)
		find(coord).shot_if_unoccupied
		"Miss"
	end

	def placement(coord, ship)
		find(coord).place(ship)
	end

	def ship_size(ship)
		ship.size
	end

	def place_ship(coord, ship)
		s_size = ship_size(ship)
		split_coord = coord.split(//)
		number = split_coord[1]
		total = (number.to_i + s_size)-1
		@array = (number.to_s..total.to_s).to_a # think needs to go to string
		@array2 = create_coordinates(@array, split_coord[0])
		placement_of_ship(coord, ship)
	end

	def create_coordinates(array, row)
		array.collect { |x| row + x }
	end

	def placement_of_ship(coord, ship)
		# calc_column(coord, ship)
		@array2.each { |x| placement(x, ship) }
		# create_coordinates(array, row)
	end


end	
