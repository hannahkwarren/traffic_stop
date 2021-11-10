class Passenger

  attr_reader :name, :age

  def initialize(passenger_info)
    @name = passenger_info["name"]
    @age = passenger_info["age"]
    @driver = nil
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

  def driver?
    if @driver == true
      true
    else
      false
    end
  end

  def drive
    @driver = true
  end

end
