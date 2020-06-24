# Object Oriented Programming in Ruby

## What is OO (Object Orientation)?
- we will define objects
- providing organization and structure to your code
- encapsulation - we group together attributes (data) and functionality
- classes are the blueprints we use to make objects that have like attributes (variables) and functionality (methods)

## Ruby Classes
- Syntax:
```ruby
class Breakfast
end
```

## Instantiating a class
- What is instantiation?
  - creating an instance of an object
  - scope comes into play - an instance of a class creates its own scope
  - we have a blueprint, the class, and instantiation means creating one of those things, bringing the object "to life"
  - the class method `.new` is used to instantiate an object, such as `Breakfast.new`
  - `.new` automatically calls the instance method `#initialize` if it is defined.  `#initialize` is optional, and usually used to add attributes when an object is instantiated.

## Ruby instance attributes
- Instance variables begin with `@`
- An instance variable is used to hold the value of an attribute of an instance of a class
- Typically, getter and setter methods are used to access attributes of objects
- A getter method, or just 'getter', simply returns the value of an attribute, which is held in an instance variable.
- A setter method, or just 'setter', allows us to provide a new value as an argument, and assigns that value to the instance variable the represents the attribute
- Getter and reader mean the same thing
- Setter and writer mean the same thing
- See `breakfast.rb` for examples of a getter and setter for a `@title` attribute
- We can use the `attr_accessor`, `attr_reader`, and/or `attr_writer` macros to automatically generate getters and setters for us.


## Adding functionality to instance objects
- use methods - for instances, we use instance methods

### Instance method
- instance methods are defined within the body of the class
- syntax:
```ruby
class MyClass
  # ...
    def method_name(parameters)
    # method body
    end 
end
```
