require 'board'

describe Board do

  let(:ship) {double :ship}

  it { is_expected.to respond_to(:place_ship).with(2).arguments }

  it { is_expected.to respond_to(:grid).with(1).arguments}

  it 'should show the location of the ship' do
    subject.place_ship ship, "A1"
    expect(subject.grid("A1")).to eq(ship)
  end

  # it 'should place a ship' do
  #   expect(subject.place_ship(1,1)).to eq(:ship)
  # end
end