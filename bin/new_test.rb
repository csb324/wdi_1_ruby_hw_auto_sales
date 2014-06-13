require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'
require_relative '../lib/car_lot.rb'

oldzola = UsedCar.new("Volvo", "Red", 2007, 30000, 1500)
pinto = UsedCar.new("Ford", "Pinto", 1973, 3_500, 25)

lot = CarLot.new('the lot')
lot.cars << oldzola
lot.cars << pinto

car1 = lot.find('make', 'Ford')
puts car1.inspect

car2 = lot.find_freaky('make', 'Volvo')
puts car2.inspect
