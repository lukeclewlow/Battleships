require './lib/water'

describe Water do 

	it 'should not contain a ship when initialized' do
		expect(Water.new.contain_ship?).to eq(false)
	end

	
end