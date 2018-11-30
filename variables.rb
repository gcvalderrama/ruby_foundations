# comment 
test_one = "abc"
test_two = test_one

test_one.upcase!

puts test_one
puts test_one.object_id
puts test_two.object_id

test_two = test_one.clone

test_one.downcase!

puts test_one

puts test_one.object_id
puts test_two.object_id