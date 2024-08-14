# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
# For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] 
# becomes {name: "pencil", price: 1}.
items = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
prices = []
items.each do |item|
  prices << item[:price]
end
lowest_price = items.select {|item| item[:price] == prices.min}
pp lowest_price

# Were you able to easily solve the problem from memory?
#   Yes
# If so, describe the next skill you will start to practice tomorrow.
#   It's not the same answer that was provided and I'm not 100% confident about 
#   these types of problems so I will continue on this track.
# If not, describe the part you got stuck on that requires more practice.
