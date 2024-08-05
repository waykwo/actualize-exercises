# QUESTION 1
# Use a loop to print out only the numbers greater than 10.
numbers = [4, 53, 22, 3, 9, 7, 12]
greater_than_ten = []
numbers.each do |number|
  if number > 10
    greater_than_ten << number
  end
end
pp greater_than_ten

