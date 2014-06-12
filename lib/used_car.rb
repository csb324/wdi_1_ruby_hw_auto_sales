require_relative 'car'

class UsedCar < Car

  attr_accessor :damages
  attr_reader :mileage

  def initialize(make, color, year, msrp, markup)
    super
    @mileage = mileage
    @damages = damages
  end

  def add_mileage(mileage)
    @value = mileage_depreciation(@value, mileage)
  end

  def mileage_depreciation(value, mileage)
    depreciation(value, 0.000001, mileage)
  end

end
