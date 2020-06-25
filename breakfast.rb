require 'pry'
# Breakfast is like a menu with different items
# Breakfast could represent one instance of Breakfast, in other words, what you had today for breakfast today.

# What are some attributes of a breakfast?
# - title
# - hot or cold (boolean)
# - sweet or savory
# - fried or boiled
# - vegetarian or vegan or meatatarian
# - raw
# - ingredients (eggs, toast)
# - nutrition facts
# - style

# adding an attribute, or a property, to a class...
# - add an initialize method
# - build a reader and/or a writer
# ... more advanced, use `attr_` macros:
#  `attr_writer`, `attr_reader` or `attr_accessor`
# A macro is a method that adds methods.  In Ruby, `attr_accessor` gives us a reader and a writer method for each attribute we pass in as a symbol.

# title, hot_or_cold, ingredients are the first 3 attributes
class Breakfast

  attr_accessor :title, :ingredients, :hot, :still_good

  @@all = []

  # #initialize is a very special instance method that's called when an object is instantiated, i.e. when we call .new (Breakfast.new(title, ingredients, hot), in this case)

  def initialize(title, ingredients, hot=true)
    # Q:  right NOW, on line 34, what will @title, @ingredients, @hot, and @still_good evaluate to?
    # A: nil
    @still_good = true
    @title = title
    @ingredients = ingredients
    @hot = hot
    # now all the attributes have values, in other words, the instance variables for this particular instance of breakfast have values other than nil
    # add this particular instance into the class variable @@all, which is an array:
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all_breakfast_titles
    all.each {|breakfast| puts breakfast.title }
  end

  def self.count
    all.count
  end

  def ready_to_eat
    puts "Another order of #{title} is ready! Come get it!"
  end

  # Below are the generic manually-coded getter and setter methods for the title attribute.  This is exactly what we get with `attr_accessor :title`
  # A reader, or getter, method for the title attribute
  # def title
  #   @title
  # end

  # A writer, or setter, method for the title attribute
  # def title=(new_title)
  #   @title = new_title
  # end

  def spoil
    # directly updating the instance attribute
    # @hot = false
    # use the setter method
    self.hot = false
    self.still_good = false
    puts "Don't eat this #{title} anymore!"
  end

  def satisfy_your_hunger_and_energize_you
    puts "Oh these #{ingredients} really get me going - no snickers needed here!"
    "Now get out there and get something done!"
  end
end

# 2 ways of asking the same thing:
# How can I instantiate a new instance of Breakfast?
# How can I create a Breakfast object?

# what is .new????  .new is a class method.
# It's the way we create a new Breakfast object, or a new Breakfast instance
huevos_rancheros = Breakfast.new(
  "Huevos Rancheros",
  "Eggs, sour cream, salsa, cheese, more cheese, toasted English muffins, hot sauce, chorizo, home fries, avocado",
  true
)
cereal = Breakfast.new(
  "Cereal",
  "cereal",
  false
)

puts "huevos_rancheros is ", huevos_rancheros

binding.pry
