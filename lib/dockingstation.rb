 require_relative "bike"
class DockingStation

  def initialize
    @bikes = []
  end

    attr_reader :bikes

  def release_bike
     raise 'No bikes currently available' if @bikes.empty?
    chosen_bike = @bikes.sample
    @bikes.delete(chosen_bike)
    chosen_bike

  end

  def dock(bike)
     raise "Docking station full" if @bikes.count >= 20
     @bikes << bike
      bike
  end



end
