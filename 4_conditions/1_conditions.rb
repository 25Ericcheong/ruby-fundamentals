
if 1 < 2
    puts "Hot diggity, 1 is less than 2!"
end

# can also be written as
puts "Hot diggity damn, 1 is less than 2" if 1 < 2

5.eql?(5)   #=> true

a = 5
b = 5
a.equal?(b) #=> true

a = "hello"
b = "hello"
a.equal?(b) #=> false



# spaceship operator
5 <=> 10    #=> -1 - LHS smaller
10 <=> 10   #=> 0 - equal
10 <=> 5    #=> 1 - LHS larger



# case
grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end



# case but more complex
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end



# unless which is the opposite of if
age = 19
unless age < 18 # will run if it is false
  puts "Get a job."
end



