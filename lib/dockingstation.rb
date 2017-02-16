 require_relative "bike"
class DockingStation

  def initialize
    @bikes = []
  end

    attr_reader :bikes

  def release_bike
     raise 'No bikes currently available' if empty?
    chosen_bike = @bikes.sample
    @bikes.delete(chosen_bike)
    chosen_bike

  end

  def dock(bike)
     raise "Docking station full" if full?
     @bikes << bike
      bike
  end

private

  def full?
    if @bikes.count>=20
      true
    else
      false
    end
  end

  def empty?
    true if @bikes.empty?
  end
end
