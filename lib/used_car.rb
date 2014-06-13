require_relative 'car'

class UsedCar < Car

  attr_reader :damages, :mileage

  def initialize(make, color, year, msrp, markup)
    super
    @damages = []
  end

  def price
    @price = @value + @markup
  end

  def add_mileage(mileage)
    @mileage = mileage
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
