# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 03-loops2.md
# 1. Start with an array of numbers and create a new array with each number times 3. For example, [1, 2, 3] becomes [3, 6, 9].
first_numbers = [3, 6, 9]
second_numbers = []
first_numbers.each do |number|
    second_numbers.append(number * 3)
end
pp second_numbers

# Were you able to easily solve the problem from memory?
#   No, this is my first each loop in Ruby. I wanted to try this problem 
#   because it was shown in Ch. 7 of Learn to Program 
#   (https://pine.fm/LearnToProgram/chap_07.html) and I was looking for 
#   some related pratice problems.
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#   I referenced the syntax for the each loop from the chapter. I'm aware of 
#   methods to append to arrays from Python but never learned to do it in 
#   Ruby so I had to look that up specifically. My answer was also different
#   from the provided answer so I will practice more each loops and appending 
#   to arrays using different methods.
