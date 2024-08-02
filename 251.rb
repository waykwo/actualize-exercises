# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# Start with an array of hashes and create a new array of number values from each hash's :age key.
# For example, [{name: "Alice", age: 27}, {name: "Blane", age: 16}] becomes [27, 16].
people = [
    {name: "Alice", age: 27},
    {name: "Blane", age: 16}
]
ages = []
people.each do |person|
    ages.append(person[:age])
end
pp ages


# Were you able to easily solve the problem from memory?
#   I had a little trouble getting it right the first time. When I use .push(), 
#   I get a little confused whether it's ages.push() or people.push() so I 
#   switched back to using .append(), which just seems to make more sense to me.

# If so, describe the next skill you will start to practice tomorrow.
#   If I don't have time to keep practising this after the other exercises, 
#   I'll continue this tomorrow.

# If not, describe the part you got stuck on that requires more practice.


