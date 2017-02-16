 require_relative "bike"
class DockingStation
  def release_bike
     raise 'No bikes currently available' unless @bike
    @bike
  end

  def dock(bike)
     raise "Docking station full" unless !@bike
     @bike = bike
  end

  attr_reader :bike

end
