require 'pry'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'
require_relative '../lib/car_lot.rb'

newzola = Car.new("Volvo", "Red", 2007, 30000, 1500)
puts newzola.value

oldzola = UsedCar.new("Volvo", "Red", 2007, 30000, 1500)

oldzola.add_mileage(14000)

scrape = Damage.new(1000, "I might have driven into a curb.")
currently_on_fire = Damage.new(10000, "This car has been on fire for a while now...")

oldzola.add_damage(scrape)
oldzola.add_damage(currently_on_fire)

puts newzola.price
puts oldzola.price

best_lot_ever = CarLot.new("such an amazing lot")

best_lot_ever.add_car(newzola)
puts best_lot_ever.value

best_lot_ever.add_car(oldzola)
puts best_lot_ever.value
