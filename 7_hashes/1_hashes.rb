my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash within a hash" => {}
}



hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }



# relating to symbols as hash keys
# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
  }
  # 'Symbols' syntax
  japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
  }