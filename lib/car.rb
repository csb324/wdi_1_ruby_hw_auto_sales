require 'date'

class Car
  @@vehicle_id_number = 0
  attr_accessor :markup
  attr_reader :make, :color, :year, :msrp, :value, :price, :vehicle_id, :sold

  def initialize(make, color, year, msrp, markup)
    @make = make
    @color = color.downcase
    @year = year
    @msrp = msrp
    @markup = markup
    @value = 0 # age_depreciation(msrp, year)
    @price = @value + markup
    @sold = false
    
    @@vehicle_id_number += 1
    @vehicle_id = @@vehicle_id_number
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


  def sell
    @sold = true
  end

end
