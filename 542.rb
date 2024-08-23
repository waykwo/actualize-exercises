# QUESTION 1
# Write a method that takes in an array of numbers 
# and returns a count of how many times the number 100 appeared in the array. 
# Then run the method and print the result.

array = [4, 100, 6, 16, 64, 24, 100, 24, 9]
count = 0
array.each do |number|
  if number == 100
    count += 1
  end
end
p count
