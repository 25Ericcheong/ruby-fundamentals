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

    string_partition.select do |item|

        puts item

        item_successor = ""
        item.each_char { |c|

            unless is_alphanumeric?(c)
                item_successor += c
                next
            end

            shift_factor.times do
                c = c.succ[-1]
            end
            item_successor += c
        }

        puts item_successor

    end
end

caesar_cipher("helloz man!", 3)