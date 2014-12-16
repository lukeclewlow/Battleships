class Ships

	# def initialize 

	# end

	def place_ship(x,y)
		@grid[x][y] << ship
	end

	def length
		size 
	end

end

class AircraftCarrier < Ships

	def size
		@size = 5
	end

end

class Battleship < Ships

	def size
		@size = 4
	end

end

class Submarine < Ships

	def size
		@size = 3
	end

end

class Destroyer < Ships

	def size
		@size = 3
	end

end

class PatrolBoat < Ships

	def size
		@size = 2
	end

end

