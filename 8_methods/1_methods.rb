# most uncessary method
# implicit return
def my_name
    "Eric cheong"
end

def explicit_my_name
    return "Eric Return"
end
  
puts my_name 



def even_odd(number)
    # removing the return keyword here will be detrimental as Ruby will continue on to execute the last expression of this method
    unless number.is_a? Numeric
        return "A number was not entered."
    end

    if number % 2 == 0
        "That is an even number."
    else
        "That is an odd number."
    end
end

puts even_odd(20)
puts even_odd("Ruby")



# note the differences about last expression being executed without return included in code
# works
def write_code(number_of_errors)
    if number_of_errors > 1
        mood = "Ask me later"
    else
        mood = "No Problem"
    end  
end

# puts returns a nil and function will return nil instead of mood
def broken_write_code(number_of_errors)
    if number_of_errors > 1
       mood = "Ask me later"
    else
       mood = "No Problem"
    end  
    puts "### mood = #{mood}"

    # the fix is to do this
    # mood <==== so that it returns mood
end