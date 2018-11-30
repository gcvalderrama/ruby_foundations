class Ship
    def deploy( start, ends )
        puts "deploy base"
    end
    # static method
    @@count = 0
    def self.sayhello()
        puts "static method"
    end

    private :private_var
    private 
    def method_private()

    end
end
class Spaceship < Ship
    attr_accessor :target
    attr_reader :read
    attr_writer :write

    @instance_count = 0 

    def self.instance_count
        return @instance_count
    end

    def initialize(name)
        @name = name
    end
    def launch(destination)
        @destination = destination
        self.target = destination
    end
    def destination
        return @destination
    end
    def deploy( start)
        puts "deploy child"
        super(start, "end")
    end    
end

ship = Spaceship.new("test")
ship.launch("Mars")
ship.target = "Moon"
ship.deploy("a")
Ship.sayhello()
puts Spaceship.instance_count
puts ship.inspect
puts ship.destination