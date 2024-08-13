# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 4. Start with an array of numbers and compute the the minimum number.
# For example, [5, 10, 8, 3, 9] becomes 3.
array = [5, 10, 8, 3, 9]
pp array.min

# Alternatively
array = [5, 10, 8, 3, 9]
minimum = array[0]
for i in 1..(array.length - 1)
  if array[i] < minimum
    minimum = array[i]
  end
end
pp minimum

# Were you able to easily solve the problem from memory?
#   I wasn't able to easily solve the problem but it was not a problem with
#   remembering syntax. I had some trouble getting the logic right.
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#   I may have chosen the wrong loop to use. I didn't choose an each loop 
#   because I didn't want to compare a value with itself but then realized 
#   that it's not a problem to compare a value with itself. So I still think 
#   it's a bit of a fault in logic, not syntax.


