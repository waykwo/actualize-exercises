# QUESTION 1
# Write a method that takes in an array of numbers and returns its sum.
# Then run the method and print the result.

array = [5, 10, 8, 3, 9]
sum = 0
for i in 0..(array.length - 1)
  sum += array[i]
end
p sum

# Check
# p array.sum