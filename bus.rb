class Bus

  attr_reader(:number, :destination, :passengers)

  def initialize(number, destination, passengers)
    @number = number
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum brum"
  end

  def count_passengers()
    return @passengers.count()
  end

  def pick_up(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off(passenger_leaving)
    for passenger in @passengers
      @passengers.delete(passenger) if passenger.name == passenger_leaving.name
    end
  end

  def empty()
    @passengers.clear()
  end

  def pick_up_from_stop(bus_stop)
    for queuer in bus_stop.queue()
      @passengers.push(queuer)
    end
    bus_stop.queue.clear()
  end
  
end #end of class