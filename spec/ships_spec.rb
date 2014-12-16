require './lib/ships'

describe Ships do 

	def sink_ship(number_of_hits, ship)
		number_of_hits.times {ship.hit!}
	end

	let(:ship){Ships.new}
	let(:aircraft_carrier){AircraftCarrier.new}

	context "Different States" do

		it "should show as floating" do
			expect(ship).to be_afloat
		end


		context "Aircraft Carrier" do

			it 'should be able to be sunk' do
				sink_ship(5, aircraft_carrier)
				expect(aircraft_carrier.hit_count).to eq(0)
			end

		end

	end
	

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


end