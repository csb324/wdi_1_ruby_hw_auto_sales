require 'date'

class Car
  attr_accessor :markup
  attr_reader :make, :color, :year, :msrp, :value, :price

  def initialize(make, color, year, msrp, markup)
    @make = make
    @color = color
    @year = year
    @msrp = msrp
    @markup = markup
    @value = age_depreciation(year, msrp)
  end

  def age_depreciation(car_year, msrp)
    years = Date.today.year - car_year
    value = msrp
    years.times do
      value = 0.95 * value
    end
    value
  end

end