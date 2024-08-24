# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 2. Convert an array of hashes into a hash using the :id key from the array's 
# hashes as the keys in the new hash.
# For example, 
# [
#   {id: 1, color: "blue", price: 32},
#   {id: 2, color: "red", price: 12}
# ]
# becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.
array = [
  {id: 1, color: "blue", price: 32},
  {id: 2, color: "red", price: 12}
]
hash = {}
for i in 0..array.length - 1
  hash[i + 1] = array[i]
end
pp hash

# Were you able to easily solve the problem from memory?
#   Yes
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


