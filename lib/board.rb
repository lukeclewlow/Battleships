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
			find(coord).occupied? == true ? shoot_occupied(coord) : shoot_unoccupied(coord)
		end
	end

	def shoot_occupied(coord)
		find(coord).shot_if_occupied
		"Hit"
	end

	def shoot_unoccupied(coord)
		find(coord).shot_if_unoccupied
		"Miss"
	end

	def check_if_occupied(coord)
		find(coord).occupied?
	end

	def check_array_occupation_horizontal
		@array3 = []
		@array2.each { |x| @array3 << check_if_occupied(x) }
	end

	def check_array_occupation_vertical
		@column_array3 = []
		@column_array2.each { |x| @column_array3 << check_if_occupied(x) }
	end

	def ship_size(ship)
		ship.size
	end

	def create_row_coordinates(array, row)
		array.collect { |x| row + x }
	end

	def create_column_coordinates(array, column)
		array.collect { |x| x + column }
	end

	def place_ship_horizontally(coord, ship)
		s_size = ship_size(ship)
		split_coord = coord.split(//)
		number = split_coord[1]
		total = (number.to_i + s_size)-1
		@array = (number.to_s..total.to_s).to_a 
		@array2 = create_row_coordinates(@array, split_coord[0])
		placement_of_ship_horizontally(coord, ship)
	end

	def place_ship_vertically(coord, ship)
		s_size = ship_size(ship)-1
		split_coord = coord.split(//)
		letter = split_coord[0] 
		@column_array = [letter]
		s_size.times { @column_array << letter = letter.next }
		@column_array2 = create_column_coordinates(@column_array, split_coord[1])
		placement_of_ship_vertically(coord, ship)
	end																														 										


	def placement(coord, ship)
		find(coord).place(ship)
	end

	def placement_of_ship_horizontally(coord, ship)
		check_array_occupation_horizontal
			if @array3.include? true
				"One of the cells has already been used, please choose another area."
			else
				@array2.each { |x|  placement(x, ship) }
			end
		
	end

	def placement_of_ship_vertically(coord, ship)
		check_array_occupation_vertical
			if @column_array3.include? true
				"One of the cells has already been used, please choose another area."
			else
				@column_array2.each { |x|  placement(x, ship) }
			end
		
	end

end	

