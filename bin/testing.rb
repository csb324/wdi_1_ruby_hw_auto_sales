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

parking = CarLot.new("such an amazing lot")

parking.add_car(newzola)

parking.add_car(oldzola)

parking.add_car(Car.new("Fiat", "Yellow", 2009, 25000, 1669))


puts parking.cars
puts "Here's a car like that! " + parking.color_find("yellow").map{ |car| car.inspect }.join(", ")
