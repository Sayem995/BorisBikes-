require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock(bike)
    fail "unable to dock bike, capacity full" if @bikes
    @bikes = bike

  end

  attr_reader :bikes #added  an s to bikes


end
