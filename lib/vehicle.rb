class Vehicle

  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = nil
    @passengers = []
  end

  def speeding?
    if @speeding == true
      true
    else
      false
    end
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def num_adults
    adults = []
    @passengers.each do |passenger|
      if passenger.adult?
        adults << passenger
      end
    end
    adults.length
  end

end
