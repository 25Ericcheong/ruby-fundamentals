def caesar_cipher(string, shift_factor)
    string_partition = string.split(" ")

    string_partition.select do |item|
        succesor_item = item.each_char { |c|

            char_shift_factor = ""
            shift_factor.times do
                char_shift_factor = c.succ
            end
            puts char_shift_factor
        }
        puts item
    end
end

caesar_cipher("hello man!", 3)