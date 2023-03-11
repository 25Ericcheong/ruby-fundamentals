def substrings(strings_to_capture, dictionary)

    return dictionary.reduce({}) do |hash_count_substrings, strings_dict|
        if strings_to_capture.include? strings_dict
            hash_count_substrings[strings_dict] ||= 0
            hash_count_substrings[strings_dict] += 1
            hash_count_substrings
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)