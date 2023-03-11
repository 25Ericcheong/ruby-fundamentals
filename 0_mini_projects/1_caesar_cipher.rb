def is_alphanumeric?(char)
    code = char.ord

    # 48 is ASCII code of 0
    # 57 is ASCII code of 9

    # 97 is ASCII code of a
    # 122 is ASCII code of z

    # 65 is ASCII code of A
    # 90 is ASCII code of Z
    (48 <= code && code <= 57) || (97 <= code && 122 <= code) || (65 <= code && 90 <= code)
end

def caesar_cipher(string, shift_factor)
    string_partition = string.split(" ")

    string_successor = string_partition.map do |item|  
        item_successor = ""
        item.each_char { |c|
            if is_alphanumeric?(c)
                shift_factor.times do
                    c = c.succ[-1]
                end                
            end
            item_successor += c
        }
        item = item_successor
    end

    return string_successor.join(" ")
end

def caesar_cipher_ord(string, shift_factor)
    string_successor = ""

    string.each_char { |c|
        (lower, upper) = [0, 0]
        code = c.ord

        case code
        when 48..57 then (lower, upper) = [48, 57]
        when 97..122 then (lower, upper) = [97, 122]
        when 65..90 then (lower, upper) = [65, 90]
        end
        
        code_shifted = code + shift_factor
        if upper == 0
            string_successor += code.chr
        elsif (code_shifted > upper) 
            string_successor += (code_shifted - upper + lower - 1).chr
        else
            string_successor += code_shifted.chr
        end
    }

    return string_successor
end

p caesar_cipher("helloz man!", 3)
puts caesar_cipher_ord("helloz man!", 3)