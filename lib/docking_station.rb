require_relative 'bike'

class DockingStation
  def release_bike
      Bike.new
  end
  def bike   
  end
  def dock(bike)
    @bike = bike
  end
  attr_reader :bike
end



