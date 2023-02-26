# ways to concatenate strings
# plus
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# shovel
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# concat method
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"



# examples of substrings accessing
"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"



# escape characters
puts "Hello\\"  #=> Need a backslash in your string?
puts "He\bllo"  #=> Backspace
puts "\rHello"  #=> Carriage return
puts "Hello\n"  #=> Newline. .
puts "\sHello"  #=> Space
puts "\tHello"  #=> Tab
puts "Hello\""  #=> Double quotation mark
puts "Hello\'"  #=> Single quotation mark



# interpolation
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"



# converting other objects to strings
5.to_s        #=> "5"
nil.to_s      #=> ""
:symbol.to_s  #=> "symbol"