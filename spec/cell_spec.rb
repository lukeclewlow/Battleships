require './lib/cell'
require './lib/ships'

describe Cell do 

	let(:cell) {Cell.new}
	let(:ship) {Battleship.new}	# it 'should create water when initialized' do
	# 	expect(Cell.new).to be_occupied
	# end

	it 'should initialize unoccupied and not shot at' do
		expect(Cell.new).to_not be_occupied
		expect(Cell.new).to_not be_shot_at
	end

	it 'can hold a ship' do
		cell.place(ship)
		expect(cell).to be_occupied
	end

	it 'can be shot at if occupied' do
		cell.place(ship)
		cell.shot_if_occupied
		expect(cell).to be_shot_at
	end
	
	it 'can be shot at if occupied' do
		cell.shot_if_unoccupied
		expect(cell).to be_shot_at
	end


end