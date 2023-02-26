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