require './lib/player'
require './lib/board'
require './lib/ships'

describe Player do 

	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:player) {Player.new}	
	let(:ship) {Submarine.new}



	context 'placing ships' do

		it 'can tell the board to place a ship horizontally' do
			player.place_ship_horizontal("A1", board, ship)
			expect(board.find("A3")).to be_occupied
		end

		it 'can tell the board to place a ship vertically' do
			player.place_ship_vertical("A1", board, ship)
			expect(board.find("C1")).to be_occupied
		end


	end


	context 'shooting' do

		it 'can tell the board to shoot a particular co-ordinate' do
			player.place_ship_horizontal("A1", board, ship)
			player.shoot("A1", board)
			expect(board.find("A1")).to be_shot_at
		end

	end

end