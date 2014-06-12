require 'pry'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'

newzola = Car.new("Volvo", "Red", 2007, 30000, 1500)
puts newzola.value

oldzola = UsedCar.new("Volvo", "Red", 2007, 30000, 1500)
puts oldzola.value

oldzola.add_mileage(14000)
puts oldzola.value

scrape = Damage.new(1000, "I might have driven into a curb.")

oldzola.add_damage(scrape)
puts oldzola.value
