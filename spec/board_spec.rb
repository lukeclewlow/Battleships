require './lib/board'
require './lib/cell'
require './lib/ships'

describe Board do

	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:ship) {double :ship, size: 1}
	let(:battleship) {Battleship.new}
	let(:submarine) {Submarine.new}

	it 'should initialise with 100 cells' do
		expect(board.hash_length).to eq 100
	end

	it 'should be able to find the state of any cell' do
		expect(board.check_if_occupied("A1")).to eq false
		expect(board.find("A1")).to_not be_shot_at
	end

	it 'should be able to place a one celled ship on any cell' do
		board.place_ship_horizontally("A3", ship)
		expect(board.check_if_occupied("A3")).to eq true
	end

	it 'should know when a cell is occupied' do
		board.place_ship_horizontally("A1", ship)
		expect(board.check_if_occupied("A1")).to eq true
	end

	it 'should be able to place a mutliple celled ship on multiple cells horizontally' do
		board.place_ship_horizontally("A1", battleship)
		expect(board.check_if_occupied("A1")).to eq true
		expect(board.check_if_occupied("A4")).to eq true
	end

	it 'should be able to place a multiple celled ship on multiple cells vertically' do
		board.place_ship_vertically("A1", battleship)
		expect(board.check_if_occupied("A1")).to eq true
		expect(board.check_if_occupied("D1")).to eq true
	end

	it 'should not allow me to place a ship, if another ship is in its path of placement' do
		board.place_ship_vertically("A1", battleship)
		expect(board.place_ship_horizontally("A1", submarine)).to eq ("One of the cells has already been used, please choose another area.")
	end

	it 'can shoot at a cell' do
		expect(board.shoot("A1")).to eq("Miss")
	end

	it 'can shoot at a cell with a ship and register a hit on the ship' do
		board.place_ship_horizontally("A1", battleship)
		expect(board.shoot("A1")).to eq("Hit")
	end











































	# it 'should be intialized with 100 squares' do
	# 	expect(board.hash_length).to eq(100)
	# end

	# it 'can find any co-ordinate and see if its occupied' do
	# 	expect(board.find("F9")).to_not be_occupied
	# end

	# it 'can find any co-ordinate and see if its shot at' do
	# 	expect(board.find("F9")).to_not be_shot_at
	# end

	# it 'can shoot at a cell whether it\'s occupied or not' do
	# 	board.shoot("A1")
	# 	expect(board.find("A1")).to be_shot_at
	# end

	# it 'can place a ship' do
	# 	board.placement("A1", ship)
	# 	expect(board.find("A1")).to be_occupied
	# end

	# it 'can place a ship over 3 cells' do
	# 	board.place_ship(["A1", "A2", "A3"], ship)
	# 	expect(board.find("A3")).to be_occupied
	# 	expect(board.find("A4")).to_not be_occupied
	# end

end

