def substrings(strings_to_capture, dictionary)

    return dictionary.reduce(Hash.new(0)) do |hash_count_substrings, strings_dict|
        if strings_to_capture.include? strings_dict
            hash_count_substrings[strings_dict] += 1
        end
        hash_count_substrings
    end
    
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = substrings("below", dictionary)
puts count