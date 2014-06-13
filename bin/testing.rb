require 'pry'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'
require_relative '../lib/car_lot.rb'

newzola = Car.new("Volvo", "Red", 2007, 30000, 1500)

oldzola = UsedCar.new("Volvo", "Red", 2007, 30000, 1500)

oldzola.add_mileage(14000)

scrape = Damage.new(1000, "I might have driven into a curb.")
currently_on_fire = Damage.new(10000, "This car has been on fire for a while now...")

oldzola.add_damage(scrape)

puts "This is how much the car would have cost new"
puts newzola.price

puts "this is how much it costs, because it's old and scraped"
puts oldzola.price
puts "oh no it's on fire!"
oldzola.add_damage(currently_on_fire)
puts oldzola.price 

parking = CarLot.new("such an amazing lot")

puts
puts

parking.add_car(newzola)
puts parking.value

parking.add_car(oldzola)
puts parking.value

parking.add_car(Car.new("Fiat", "Yellow", 2009, 25000, 1669))

#puts parking.color_find("yellow").map{ |car| car.inspect }.join(", ")

puts parking.value
binding.pry

