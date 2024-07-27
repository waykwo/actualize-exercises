# QUESTION 1
# Create a hash called cat to store the cat's name, breed, and age. Then print the hash.
# Create a Cat class which stores a cat's name, breed, and age. Print an instance of the cat class.
cat = { "name" => "Orlando", "breed" => "DSH", "age" => 12 }
puts cat

class Cat
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
end

cat = Cat.new("Gone", "DSH", 11)
pp cat


# QUESTION 2
# The following code has several mistakes that cause it to crash and not run properly.
# Fix the mistakes to make sure the code runs properly.
class StoreItem
  def initialize(input_name, input_price)
    @name = input_name
    @price = input_price
  end
end

storeItem = StoreItem.new("chair", 100)
pp storeItem





# class StoreItem
#   def new(input_name, input_price)
#     @name = input_name
#     @price = input_price
#   end
# end

# StoreItem = store_item.new("chair", 100)
# pp StoreItem