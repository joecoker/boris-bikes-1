require 'docking_station.rb'


describe DockingStation do
  let (:docking_station) {DockingStation.new}
  let (:bike) {Bike.new}

  it {is_expected.to respond_to :release_bike}

  it "#release_bike will get a docked bike" do
    subject.dock(bike)
    tricycle = subject.release_bike
    expect(tricycle).to be_working
  end
  it "dock stores a bike" do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  it "check whether bike method exists" do
    expect(subject).to respond_to(:bike)
  end

  it "#release_bike throw error if no bikes docked" do
    expect { subject.release_bike } .to raise_error("No bikes left")
  end
end
