class Spaceship
  def launch
    batten_hatches
    # do other fun launch activities
  end

  def batten_hatches
    puts "Batten the hatches!"
  end
  private :batten_hatches
end

class SpritelySpaceship < Spaceship
  def initialize
    batten_hatches # this ship is always ready to go
  end
end

ship = SpritelySpaceship.new
