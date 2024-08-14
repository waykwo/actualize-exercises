# QUESTION 1
# Read about the Ruby map method: https://www.rubyguides.com/2018/10/ruby-map-method/ 
# Then write a program that uses the map method with an array of numbers 
# to create a new array with each number multiplied by 100.

array = [5, 10, 8, 3, 9]
new_array = array.map {|number| number * 100}
pp new_array
