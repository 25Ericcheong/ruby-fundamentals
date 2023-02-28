range1 = (1..10).to_a # if it is (1...10); it would mean that 10 is excluded
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"



# for loop to iterate through a collection of info
for i in 0..5
    puts "#{i} zombies incoming!"
  end



# runs loop 5 times
5.times do 
puts "hello 5 times"
end



5.upto(10) { |num| puts "#{num}" }


loop do
    x = 1
    break
end

# puts x => doing this will cause an error because it is a method invocation