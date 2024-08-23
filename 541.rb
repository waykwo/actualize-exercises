# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 1. Convert an array of arrays into a hash.
# For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.
array = [[1, 3], [8, 9], [2, 16]]
hash = {}
array.each do |pair|
  # hash.store(pair[0], pair[1]) or
  hash[pair[0]] = pair[1]
end
pp hash

# Were you able to easily solve the problem from memory?
#   No
# If so, describe the next skill you will start to practice tomorrow.
#   Keep reviewing hashes and arrays
# If not, describe the part you got stuck on that requires more practice.


