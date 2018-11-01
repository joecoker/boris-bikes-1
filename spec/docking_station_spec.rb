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
    expect(subject.bike_rack).to include(bike)
  end
  it "check whether bike method exists" do
    expect(subject).to respond_to(:bike)
  end

  it "#release_bike throw error if no bikes docked" do

    expect { subject.release_bike && (subject.counter.to equal(0))}.to raise_error("No bikes left")
  end

  it "throw error if #dock when 20 bikes are docked" do
    expect { 21.times{ subject.dock(bike)} } .to raise_error("Docking station full")
  end
end
