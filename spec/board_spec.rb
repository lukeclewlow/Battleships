require './lib/board'
require './lib/cell'
require './lib/ships'

describe Board do

	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:ship) {Submarine.new}

	it 'should be intialized with 100 squares' do
		expect(board.hash_length).to eq(100)
	end

	it 'can find any co-ordinate and see if its occupied' do
		expect(board.find("F9")).to_not be_occupied
	end

	it 'can find any co-ordinate and see if its shot at' do
		expect(board.find("F9")).to_not be_shot_at
	end

	it 'can shoot at a cell whether it\'s occupied or not' do
		board.shoot("A1")
		expect(board.find("A1")).to be_shot_at
	end

	it 'can place a ship' do
		board.placement("A1", ship)
		expect(board.find("A1")).to be_occupied
	end

	it 'can place a ship over 3 cells' do
		board.place_ship(["A1", "A2", "A3"], ship)
		expect(board.find("A3")).to be_occupied
		expect(board.find("A4")).to_not be_occupied
	end

end

