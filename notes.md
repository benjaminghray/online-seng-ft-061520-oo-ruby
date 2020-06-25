## Methods vs Functions

### Function
- a chunk of code that's reusable
- functions can take arguments
- functions usually have a name
- functions can have a return value
- it should accomplish a single task <-- SRP "Single Responsibility Principle"
- a function can be called, or invoked

### Method
- a method is a function
- a method is a function that belongs to an object
- a method is a function that is the property of an object
- a method must be called on an its object

Function invocation usually looks something like this

```js
function someFunc() {}
// function invocation:
someFunc()
```

Method invocation looks like this:
receiving_object.method_name()

```ruby
class Dog
  def speak
    "Bark!"
  end
end

fido = Dog.new
fido.speak
```

In Ruby, `self` is the implied receiver.

# Scope, in computer programming
- Scope has to do with accessibility
- Variable scope describes where that variable is directly accessible (not just using a getter method)
- Method scope describes where/how that method is available to be called

## Common types/sizes of scope
- global scope (same as evil) - available everywhere (In Ruby, global variables start with `$`)
- class scope - available throughout the body of a class, including inside all methods (class and instance methods).. a class variable in Ruby starts with `@@`
- instance scope - available within the context of a single instance, in other words inside instance methods.  In Ruby, an instance variable starts with `@`.
- local scope - available within the method or block, in Ruby, local variables have either method or block scope, depending on whether they're declared in a method or a block.  Local variables are lower-case snake_case and have no leading symbols.
