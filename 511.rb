# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 4. Use a nested loop to find the largest product of any two different numbers within a given array.
# For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.
numbers = [5, -2, 1, -9, -7, 2, 6]
products = []
numbers.each do |number|
  other_numbers = numbers.reject {|other| other == number}
  other_numbers.each do |other_num|
    products << number * other_num
  end
end
largest_product = products.max
p largest_product

# Were you able to easily solve the problem from memory?
#   No, nested loops still doesn't come naturally.
# If so, describe the next skill you will start to practice tomorrow.
#   Keep on this track
# If not, describe the part you got stuck on that requires more practice.



