a = 4
b = a
a = 7 
# b will still be 4 at this point



# variable value does not get reassigned
# because this is a method definition
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry' 
puts name



# variable value gets reassigned
# because this is a block
a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3
  b = 4           # is a accessible here, in an inner scope?
end

puts a # => 3
# b will not be accessible here




arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a # => 5
# because this is a block, not a method invocation