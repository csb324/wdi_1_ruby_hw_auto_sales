class CarLot
  attr_reader :name, :value, :cars

  def initialize(name)
    @name = name
    @cars = []
    @value = 0
  end

  def add_car(car)
    @cars.push(car)
    @value += car.price
  end
end

