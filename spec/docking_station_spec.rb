require "dockingstation"

describe DockingStation do

 describe "#dock_bike"do

 it {is_expected.to respond_to(:dock).with(1).argument}
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end



  it "raises and error when the station is full" do
    bike =Bike.new
    20.times{subject.dock(bike)}
    expect {subject.dock(bike)}.to raise_error "Docking station full"
  end
 end



  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "releases working bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it 'raises and error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes currently available'
    end

  end
it {is_expected.to respond_to(:bikes)}
end
