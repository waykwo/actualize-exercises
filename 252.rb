# QUESTION 1
# Write a method that takes in four numbers and returns the numbers added together.
# Then run the method and print the result. 
# (Note: you do not need to make a custom class for this exercise, just a method)
def sum(w, x, y, z)
    return w + x + y + z
end

# puts sum(5, 10, 15, 20)


# QUESTION 2
# Write a class called Shoe that stores attributes for name, color, and price.
# Then make an instance of a shoe and print out the details using `pp`.
# (Note: for this problem, just make the initialize method in the class, no other methods needed)
class Shoe
    def initialize(input_name, input_colour, input_price)
        @name = input_name
        @colour = input_colour
        @price = input_price
    end
end

reebok_pump = Shoe.new("Reebok Pumps", "White", 109)

pp reebok_pump
