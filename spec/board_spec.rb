require './lib/board'

describe Board do

	let(:board) {Board.new}
	let(:ship) {double :ship}
	let(:cell) {Cell.new}

	it 'should have a grid that is 10 x 10 in size' do
		expect(board.hash_length).to eq(100)
	end

	it 'can shoot at a cell' do
		board.shoot("A1")
		expect(cell.shot_at?).to eq(true)
	end

end

