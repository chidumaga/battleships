require 'board'

describe Board do

  let(:ship) {double :ship , size: 1 }

  it { is_expected.to respond_to(:place_ship).with(2).arguments }

  it { is_expected.to respond_to(:grid).with(1).arguments}

  it { is_expected.to respond_to(:create).with(1).argument }

  it { is_expected.to respond_to(:prevent_overlap) }


  # it 'should not spill outside the board' do
  #   board.

  it 'should show the location of the ship' do
    subject.place_ship ship, 1
    expect(subject.grid(1)).to eq(ship)
  end

  it 'should constrain ships to the board' do
    subject.create 3
    expect { subject.grid(4) }.to raise_error "Out of bounds"
  end

  # it 'should place a ship' do
  #   expect(subject.place_ship(1,1)).to eq(:ship)
  # end
end