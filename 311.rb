# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 1. Start with an array of numbers and create a new array with only the numbers less than 20.
# For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].
numbers = [2, 32, 80, 18, 12, 3]
less_than_twenty = []
numbers.each do |number|
    if number < 20
        less_than_twenty << number
    end
end
pp less_than_twenty


# Were you able to easily solve the problem from memory?
#   Yes
# If so, describe the next skill you will start to practice tomorrow.
#   I've been doing a lot of each loops and feel that I might benefit from more 
#   practice with while loops.
# If not, describe the part you got stuck on that requires more practice.


