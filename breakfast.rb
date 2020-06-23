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

# adding an attribute, or a property, to a class...???
# - add an initialize method
# - build a reader and/or a writer
# ... more advanced, use `attr_` macros
# - add `attr_writer`, `attr_reader` or `attr_accessor`

# title, hot_or_cold, ingredients are the first 3 attributes
class Breakfast
  attr_accessor :title, :ingredients, :hot

  def initialize(title, ingredients, hot=true)
    @title = title
    @ingredients = ingredients
    @hot = hot
  end
  #
  # # a reader, or getter, method for the title attribute
  # def title
  #   @title
  # end
  #
  # # a writer, or setter, method for the title attribute
  # def title=(t)
  #   @title = t
  # end
end

# 2 ways of asking the same thing:
# How can I instantiate a new instance of Breakfast?
# How can I create a Breakfast object?

# what is .new????
# It's the way we create a new Breakfast object, or a new Breakfast instance
huevos_rancheros = Breakfast.new(
  "Huevos Rancheros",
  "Eggs, sour cream, salsa, cheese, more cheese, toasted English muffins, hot sauce, chorizo, home fries, avocado",
  true
)

puts "huevos_rancheros is ", huevos_rancheros

binding.pry
