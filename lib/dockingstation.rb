 require_relative "bike"
class DockingStation
  def release_bike
    return raise 'No bikes currently available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end
