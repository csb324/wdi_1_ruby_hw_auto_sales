require 'date'

class Car
  attr_accessor :markup
  attr_reader :make, :color, :year, :msrp, :value, :price

  def initialize(make, color, year, msrp, markup)
    @make = make
    @color = color.downcase
    @year = year
    @msrp = msrp
    @markup = markup
    @value = age_depreciation(msrp, year)
    @price = @value + markup
  end

  def depreciation(startvalue, rate, num_times)
    value = startvalue
    num_times.times do
      value = (1 - rate) * value
    end
    value
  end

  def age_depreciation(msrp, car_year)
    years_old = Date.today.year - car_year
    depreciation(msrp, 0.05, years_old)
  end

end
