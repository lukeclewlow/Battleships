require './lib/ships'

describe Ships do 

	def sink_ship(number_of_hits, ship)
		number_of_hits.times {ship.hit!}
	end

	let(:ship){Ships.new}
	let(:aircraft_carrier){AircraftCarrier.new}
	let(:battleship){Battleship.new}
	let(:submarine){Submarine.new}
	let(:destroyer){Destroyer.new}
	let(:patrol_boat){PatrolBoat.new}

	context "Different States" do

		context "Aircraft Carrier" do

			it "should show as floating" do
				expect(aircraft_carrier).to be_afloat
			end

			it 'should be able to be sunk' do
				sink_ship(5, aircraft_carrier)
				expect(aircraft_carrier.hit_count).to eq(0)
			end

			it 'should know when its sunk' do
				sink_ship(5, aircraft_carrier)
				expect(aircraft_carrier).to_not be_afloat
			end

		end

		context "Battleship" do

			it "should show as floating" do
				expect(battleship).to be_afloat
			end

			it 'should be able to be sunk' do
				sink_ship(4, battleship)
				expect(battleship.hit_count).to eq(0)
			end

			it 'should know when its sunk' do
				sink_ship(4, battleship)
				expect(battleship).to_not be_afloat
			end

		end

		context "Submarine" do

			it "should show as floating" do
				expect(submarine).to be_afloat
			end

			it 'should be able to be sunk' do
				sink_ship(3, submarine)
				expect(submarine.hit_count).to eq(0)
			end

			it 'should know when its sunk' do
				sink_ship(3, submarine)
				expect(submarine).to_not be_afloat
			end	

		end

		context "Destroyer" do

			it "should show as floating" do
				expect(destroyer).to be_afloat
			end

			it 'should be able to be sunk' do
				sink_ship(3, destroyer)
				expect(destroyer.hit_count).to eq(0)
			end

			it 'should know when its sunk' do
				sink_ship(3, destroyer)
				expect(destroyer).to_not be_afloat
			end

		end

		context "Patrol Boat" do

			it "should show as floating" do
				expect(patrol_boat).to be_afloat
			end

			it 'should be able to be sunk' do
				sink_ship(2, patrol_boat)
				expect(patrol_boat.hit_count).to eq(0)
			end

			it 'should know when its sunk' do
				sink_ship(2, patrol_boat)
				expect(patrol_boat).to_not be_afloat
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