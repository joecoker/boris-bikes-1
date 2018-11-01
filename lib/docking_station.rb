require_relative 'bike'

class DockingStation
  attr_reader :bike, :bike_rack

  def initialize
    @bike_rack = []
  end

  def release_bike
    fail "No bikes left" if empty?
    bike_rack.pop
  end

  def dock(bike)
   fail "Docking station full" if full?
   bike_rack.push(bike)
  end

private

  def full?
    true if bike_rack.length == 20
  end

  def empty?
    true if bike_rack.length == 0
  end

end
