# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 3. Start with an array of hashes and compute the sum of the prices (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] 
# becomes 105.
items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
sum = 0
items.each do |item|
  sum += item[:price]
end
p sum

# Were you able to easily solve the problem from memory?
#   Using the each method, yes. I had trouble solving this using the reduce method.
# If so, describe the next skill you will start to practice tomorrow.
#   I'd like to keep practising reduce method
# If not, describe the part you got stuck on that requires more practice.


