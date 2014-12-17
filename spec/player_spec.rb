require './lib/player'
require './lib/board'

describe Player do 

	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:player) {Player.new}	



	context 'placing ships' do

		it 'can place a ship horizontally' do
			player.place_ship_horizontal("A1", board)
			expect(board.find("A3")).to be_occupied
		end

		it 'can place a ship vertically' do
			player.place_ship_vertical("A1", board)
			expect(board.find("C3")).to be_occupied
		end


	end

	
end