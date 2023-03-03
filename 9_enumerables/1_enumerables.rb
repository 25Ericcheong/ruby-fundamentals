friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# simple examples of select and reject enumerables
friends.reject { |friend| friend == 'Brian' }
friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]



 # cases for when we would want to write logic that can't fit in 1 simple one liner code
 my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end



friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }