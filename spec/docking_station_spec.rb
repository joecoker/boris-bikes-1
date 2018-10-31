require 'docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it "#release_bike will get a new instance of bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it "dock stores a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike 
  end
  it "check whether bike method exists" do
    expect(subject).to respond_to(:bike)
  end

end
