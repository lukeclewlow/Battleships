class Ships

	def initialize	 
		@afloat
	end

	def afloat?
		sunk ? @afloat = false : @afloat = true
	end

	def length
		size 
	end

	def size
		@size
	end

	def hit!
		@count -= 1
	end

	def hit_count
		@count
	end

	def sunk
		@count == 0
	end

end

class AircraftCarrier < Ships

	def initialize
		super
		@size = 5
		@count = 5
	end

end

class Battleship < Ships

	def initialize
		super
		@size = 4
		@count = 4
	end

end

class Submarine < Ships

	def initialize
		super
		@size = 3
		@count = 3
	end

end

class Destroyer < Ships

	def initialize
		super
		@size = 3
		@count = 3
	end

end

class PatrolBoat < Ships

	def initialize
		super
		@size = 2
		@count = 2
	end

end

