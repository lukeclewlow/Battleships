class Player

	def place_ship_horizontal(coord, board, ship)



	end


	def place_ship_vertical(coord, board, ship)


		
	end









	# def place_ship_horizontal(coord, board, ship)
	# 	array = coord.split(//) ; letter = array[0] ; number = array[1].to_i
	# 	number2 = number+1 ; number3 = number2+1 ; number4 = number3+1 ; number5 = number4+1 
	# 	array2 = ["#{letter}#{number}","#{letter}#{number2}","#{letter}#{number3}","#{letter}#{number4}","#{letter}#{number5}"]
	# 	board.place_ship(array2[0..5], ship)
	# end

	# def place_ship_vertical(coord, board, ship)
	# 	array = coord.split(//) ; letter = array[0] ; number = array[1].to_i
	# 	letter2 = letter.next ; letter3 = letter2.next
	# 	array2 = ["#{letter}#{number}","#{letter2}#{number}","#{letter3}#{number}"]
	# 	board.place_ship(array2, ship)
	# end

	def shoot(coord, board)
		board.shoot(coord)
	end

end

