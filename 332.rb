# QUESTION 1
# Use a loop to compute the sum of all the given numbers.
numbers = [5, 4, 2, 2, 6, 8, 1]
sum = numbers.reduce {|number, sum| number + sum}
p sum

# Alternate
numbers = [5, 4, 2, 2, 6, 8, 1]
sum = 0
numbers.each do |number|
  sum += number
end
p sum
