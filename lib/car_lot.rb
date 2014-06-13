class CarLot  
  attr_reader :name, :value, :cars, :revenue

  def initialize(name)
    @name = name
    @cars = []
  end

  def add_car(car)
    @cars.push(car)
  end

  def value
    @value = 0
    @cars.each do |car|
      if car.sold
        @value += car.price 
      end     
    end
    @value
  end

  def revenue
    @revenue = 0
    @cars.each do |car|
      if car.sold
        @revenue += car.price
      end        
    end
  end

# here begins the most repetitive and irritating part of this code
# i wanted to make it better! i tried! but to no avail.
  def color_find(color)
    @cars.select do |car|
      car.color == color
    end
  end

  def make_find(make)
    @cars.select do |car|
      car.make == make
    end
  end

  def year_find(year)
    @cars.select do |car|
      car.year == year
    end
  end

end

