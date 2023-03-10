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

p caesar_cipher("helloz man!", 3)