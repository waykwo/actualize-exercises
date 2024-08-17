# QUESTION 1
# Write a method that takes in an array of numbers and returns an array with every number doubled.
# Then run the method and print the result.

def double_array(array)
  doubled_array = []
  array.each do |item|
    doubled_array << item * 2
  end
  return doubled_array
end

array = [5, 10, 8, 3]
doubled = double_array(array)
pp doubled