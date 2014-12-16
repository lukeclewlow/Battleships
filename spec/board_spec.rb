require './lib/board'

describe Board do

	let(:board) {Board.new}
	let(:ship) {double :ship}

	it 'should have a grid that is 10 x 10 in size' do
		expect(board.row_length).to eq(10)
		expect(board.column_length).to eq(10)
	end

	it 'can hold a ship' do

	end

end

