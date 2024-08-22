# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 10. Use a nested loop to convert an array of string arrays into a single string.
# For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".
array = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
string = ""
array.each do |item|
  item.each do |sub_item|
    string << sub_item
  end
end
pp string

# Were you able to easily solve the problem from memory?
#   Yes
# If so, describe the next skill you will start to practice tomorrow.
#   Arrays and hashes
# If not, describe the part you got stuck on that requires more practice.


