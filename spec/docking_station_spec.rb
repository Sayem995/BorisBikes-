require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)

      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }#added an S

  it 'docks something' do
    bike = Bike.new

    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.bikes).to eq bike#added an s 
  end

  describe '#docking_bike' do
    it 'raises error when capacity full' do
      bike = Bike.new
      subject.dock(bike)

      expect { subject.dock(bike) }.to raise_error "unable to dock bike, capacity full"
    end
  end
end
