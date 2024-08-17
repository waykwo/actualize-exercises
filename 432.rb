# QUESTION 1
# Write a method that takes in an array of numbers and returns the mean average.
# Then run the method and print the result.

def calculate_mean(array)
  array.sum / array.length
end

array = [5, 10, 8, 3]
sum = 0.0
array.each do |element|
    sum += element
end
mean = sum / array.length
pp mean