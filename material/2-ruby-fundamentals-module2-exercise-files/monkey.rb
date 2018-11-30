class Spaceship
  private
  def batten_hatches
    puts "Batten the hatches!"
  end
end

ship = Spaceship.new

class Spaceship
  private
  def batten_hatches
    puts "Avast!"
  end
end

ship.batten_hatches

