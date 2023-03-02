# Ruby Fundamentals

Started this repository to take notes while I go through the Odin project for learning Ruby. Similar to my other fundamentals repository, the intention here is to learn the fundamentals and start building right after / during the process.

## Ruby Features

###  Documentation

- `::` can sometimes be used to define namespaces to group and differentiate classes of the same name from one to another. It can also mean that it is a class method which is worth noting.
- `::` is for class methods and `#` would relate to instance methods. 
-  Included modules would allow a module to utilize functionalities from another module. An example is `String` class being able to utilize methods from the `Comparable` module.

### RubyGems and Debugging

- Allow us to use useful Ruby libraries on system so we can focus on implementation of features. `Gemfile` offers solution to organize gems and their dependencies in central location. 
- Use `pry` to debug. Will need to install with gems
- To debug file, can also load Ruby file into `irb`. This can be done by typing `irb` and then inputting `require './filename.rb'`

### Basic Data Types

- Everything is an object in Ruby; numbers (integers and floats), strings, symbols and Booleans (`true`, `false` and `nil`)
- There exists useful methods that can be used for on the basic object data types as well.
- Escape characters like `\n` will only work within double quotation marks and string interpolations only work within double quotation as well.
- Strings can be changed, every time it changes - Ruby stores it in memory even if an existing string with the same value already exists. Symbols are only stored in memory once - making them faster in some situations. Symbols are referred to as immutable string.
- Common application is using symbols as keys in hashes.
- `nil` stands for nothing. `.nil?` can be used to determine if a variable is empty or not. If it is used in an `if` statement, it is treated as `false`. Although this may be the case, do not treat `nil` as the same as `false`. 
- Two different types of data types cannot be concatenated. Instead, an error will be thrown.


### Variables

- Assigning something to a variable is having it stored in memory - effectively a reference or pointer. Note that if we assigning one variable to another and we utilize `.upcase!` on the original variable - both variables will have the effect. Worth noting this side effect as a normal `.upcase` would not introduce this side affect. 
- Worth noting that reassigning the first variable (after assigning it to another variable) will not cause the other variable to be affected.
- Do not use `$global_variables` and `@@class_variables` are rarely needed and easily misused. 
- Variables cannot be changed within method definitions while variables can be changed within blocks `{}`. 
- Note, not all `do...end` imply a block. A `do...end` on a `for` or `while` loop is not a block. An example of a loop that utilizes method invocation is `3.times` which essentially means that if we initialize a variable within in (not defined outside) and attempt to access it; an error will occur.

### Exceptions

- Syntactic structure; `begin`, `rescue` and `end`. Examples of ways to utilize exceptions can be found in the exception folder.

### Conditional Logic

- Falsy values in Ruby are `nil` and `false`. 
- `.eql?` checks whether both values are the exact same object in memory. Integers would point to the same object in memory but this will not be the case for strings because strings can be stored as efficient as numbers in memory.
- Spaceship operator and `unless` is quite a cool thing to note and may use. There is also the utilization of `case` with `then` which can be used to assign to a variable too.

### Loops

- `loop` probably won't be seen used as much. If it is used, probably a better way. `until` is like `while` but it will continue as long as condition is `false`. `for i in 0..5` - a for loop can be used to iterate through a collection type data.
- `times loop` can be executed by `5.times do` which essentially executes loop 5 times. THere are also `1.upto(10)` which runs 1 up to 10 loops (making it 11 times) which is a cool shortcut way (there is also `downto` which does the same thing but opposite)
- Note, `while` is not implemented as a method like `loop`; so it does not have its own scope. Meaning, a side effect to this is that a variable initialized within its scope can be accessed from the outside of its scope. `loop` is a method invoked block.
- `.each` is an example of an iterator; methods to loop over a given set of data. 

### Arrays

- Note that not all methods will directly affect original array object. An example would be `uniq`; if you'd like to permanently change original object - you can do `.uniq!` instead. This does not apply to the rest of the existing methods. It is exclusive for `uniq`.

### Hashes

- Basically a dictionary. `.fetch` will raise an error if you try to access a value without a key but if you try to access a value with pair of square brackets with a key that doesn't exist you will get a `nil`. Could set a default value as a second parameter with `.fetch` if key doesn't exist. 
- Strings can be used as strings but usually, `symbols` are used instead - `:key`. This is the case because it is more performant than strings in Ruby. The rocket syntax symbol is the cleaner way of creating hash key symbols.
- Note: When calling a method, if a hash is the last argument entered, you can skip squiggly braces. Eg. `some_object.some_method argument1, argument2, :param1 => value1, :param2 => value2`.

### Methods

- 'Pound' signs (`#`) are used as conventions for writing out Ruby instance methods; can be used to write out full name of an instance method or just method name. 
- Note. Ruby offers implicit return for methods. Meaning, return can be excluded and Ruby assumes that the last expression evaluated will need to be returned.