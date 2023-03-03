teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil



# exception free
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil



# doing this would mean that the default value (array) is referenced / linked to one another
# meaning, changing one array will change the rest as shown below
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]