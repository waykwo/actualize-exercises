# QUESTION 1
# Create a method that accepts three numbers as inputs, 
# and returns the product of all three numbers. 
# So, if the three inputs were 2, 4, and 6, the output should be 48.
def product(first, second, third)
  return first * second * third
end

# puts product(2, 4, 6)


# QUESTION 2
# The following method is supposed to take in 3 numbers and return the sum.
# However, there are mistakes in the code that cause it to crash.
# Explain what the error message means in your own words, then fix the mistakes in the code.
def add_three_numbers(number1, number2, number3)
  return number1 + number2 + number3
end

numbers = [3, 2, 7]
# add_three_numbers(numbers) # The array is one argument and the method is 
# expecting 3. Even though the array currently has 3 objects inside, the array itself is a single object.
add_three_numbers(numbers[0], numbers[1], numbers[2]) # this is how you pass the elements of the array into the method

# puts add_three_numbers(numbers[0], numbers[1], numbers[2])



# def add_three_numbers(number1, number2, number3)
#   return number1 + number2 + number3
# end

# numbers = [3, 2, 7]
# add_three_numbers(numbers)