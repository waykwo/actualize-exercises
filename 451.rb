# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 3. Use a nested loop with one array of strings to create a new array that 
# contains every combination of each string with every other string in the array.
# For example, ["a", "b", "c", "d"] becomes 
# ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].
array = ["a", "b", "c", "d"]
combined = []
array.each do |first_array_item|
  pair_array = array.reject {|item| item == first_array_item}
  pair_array.each do |pair_array_item|
    combined << first_array_item + pair_array_item
  end
end
pp combined

# Were you able to easily solve the problem from memory?
#   No, but it wasn't because I couldn't remember the syntax. It was due to 
#   the challenge of the right logic.
# If so, describe the next skill you will start to practice tomorrow.
#   Keep practising loops
# If not, describe the part you got stuck on that requires more practice.


