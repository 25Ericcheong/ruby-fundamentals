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



# with hashes, will need to set up block variables for both key and variables
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}



my_numbers = [5, 6, 7, 8]

# by default, initial value of the accumulator; in this case 'sum' will be the first element in collection
my_numbers.reduce { |sum, number| sum + number } #=> 26

# we can set initial value of accumulator by doing so
my_numbers.reduce(1000) { |sum, number| sum + number } #=> 1026



# can even create a new hash as the initial value like so below! This is a way to count votes to go to somewhere for example
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

count = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}
puts count


names = ["James", "Bob", "Joe", "Mark", "Jim"]
names.group_by{|name| name.length}
#=> {5=>["James"], 3=>["Bob", "Joe", "Jim"], 4=>["Mark"]} 