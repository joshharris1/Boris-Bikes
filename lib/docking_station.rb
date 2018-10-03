require_relative 'bike'

class DockingStation
  
  DEAFULT_CAPACITY = 20
  attr_accessor :capacity
  attr_reader :capacity
  
  def initialize(capacity=DEAFULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
  
  def release_bike
    fail 'No bikes available' if empty?
      @bikes.pop
  end
  
  def dock(bike)
    fail 'Docking station full'  if full?
    @bikes << bike
  end
  
  private 
  attr_reader :bikes
  
  def full?
    @bikes.count >= DEAFULT_CAPACITY
  end
  
  def empty?
    @bikes.empty?
  end
end


