require './lib/ships'

describe Ships do 
	
	context "Be Certain lengths" do

		context "Aircraft Carrier" do

			it 'should be five cells in length' do
				expect(AircraftCarrier.new.length).to eq(5)
			end

		end

		context "Battleship" do

			it 'should be four cells in length' do
				expect(Battleship.new.length).to eq(4)
			end

		end 

		context "Submarine" do

			it 'should be three cells in length' do
				expect(Submarine.new.length).to eq(3)
			end

		end 

		context "Destroyer" do

			it 'should be three cells in length' do
				expect(Destroyer.new.length).to eq(3)
			end

		end 

		context "Patrol Boat" do

			it 'should be two cells in length' do
				expect(PatrolBoat.new.length).to eq(2)
			end

		end 

	end

	context "Different States" do

	end

end