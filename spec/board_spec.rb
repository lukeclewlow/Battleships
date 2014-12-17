require './lib/board'

describe Board do

	let(:board) {Board.new}
	let(:cell) {Cell.new}

	it 'should have a grid that is 10 x 10 in size' do
		expect(board.hash_length).to eq(100)
	end

	it 'can shoot at a cell' do
		board.shoot("A1")
		expect(board.find("A1")).to be_shot_at
	end

	it 'can place a ship' do
		board.placement("A1")
		expect(board.find("A1")).to be_occupied
	end

	it 'can place a ship horizontally over 3 cells' do
		board.place_ship(["A1", "A2", "A3"])
		expect(board.find("A3")).to be_occupied
	end
end

