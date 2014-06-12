require_relative '../lib/used_car.rb'

newzola = Car.new("Volvo", "Red", 2007, 30000, 1500)
puts newzola.value

oldzola = UsedCar.new("Volvo", "Red", 2007, 30000, 1500)
puts oldzola.value

puts oldzola.add_mileage(14000)

