require_relative 'car'

class UsedCar < Car

  attr_accessor :damages

  def initialize(make, color, year, msrp, markup)
    super
    @damages = []
  end

  def add_mileage(mileage)
    @value = mileage_depreciation(@value, mileage)
  end

  def mileage_depreciation(value, mileage)
    depreciation(value, 0.000001, mileage)
  end

  def add_damage(damage)
    @damages.push(damage)
    @value = (@value - damage.cost)
  end

end
