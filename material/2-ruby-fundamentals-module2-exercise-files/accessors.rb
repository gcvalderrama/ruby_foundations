class Spaceship
  attr_accessor :destination

  attr_reader :name
  attr_writer :name
end

ship = Spaceship.new
ship.destination = "Jupiter"
ship.name = "Dreadnought"
p ship
puts ship.destination
puts ship.name

