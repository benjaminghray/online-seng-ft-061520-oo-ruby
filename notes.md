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
