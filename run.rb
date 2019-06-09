require "pry"
require_relative "lib/rides.rb"
require_relative "lib/person.rb"
require_relative "lib/amusement_park.rb"


richard = Person.new("Richard Li", 26, 5)
dom = Person.new("Dominic Vinas", 29, 5)
josh = Person.new("Joshua Valette", 26, 3)
liam = Person.new("Liam Jackson", 9, 1)
ace = Person.new("Acito Torres", 26, 2)

el_torro = Ride.new("El Toro", "Roller Coaster", 5)
nitro = Ride.new("Nitro", "Roller Coaster", 5)
torando = Ride.new("Tornado", "Water Ride", 3)
bugaboo = Ride.new("Bugaboo", "Kids Ride", 1)

richard.get_on_ride(nitro)
josh.get_on_ride(torando)
ace.get_on_ride(bugaboo)
richard.get_on_ride(bugaboo)
richard.get_on_ride(torando)
josh.get_on_ride(bugaboo)



binding.pry



