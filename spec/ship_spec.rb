require 'ship'

describe Ship do

  let(:board) { double :board }

  it { is_expected.to respond_to :size }

  it { is_expected.to respond_to :size= }

  it { is_expected.to respond_to(:set_direction).with(1).argument }

  it 'should have a range of sizes' do
    subject.size = 'a'
    expect(subject.size).to eq 1
  end

  it 'should be able to receive a direction to face' do
    subject.set_direction(:vertical)
    expect(subject.direction?).to eq :vertical
  end

end