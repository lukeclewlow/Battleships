require './lib/board'

describe Board do

	#let(:grid) (Row.new(10) {Row.new(10,'~')})
	let(:board) {Board.new}

	it "should have a grid that is 10 x 10 in size" do
		expect(board.grid_length).to eq(10)
	end

end


