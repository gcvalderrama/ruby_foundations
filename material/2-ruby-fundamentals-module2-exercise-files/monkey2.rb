class String
  # add a space after each character
  def space_out
    chars.join(" ")
  end

  def size
    "Won't tell you!"
  end
end

puts "Firefly".space_out
puts "abc".size