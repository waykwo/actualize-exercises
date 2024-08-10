# QUESTION 1
# Use a loop to create a new array with each string's first letter only.
words = ["Big", "Elephants", "Can", "Always", "Understand", "Small", "Elephants"]
first_letters = []
words.each do |word|
  first_letters << word[0]
end
pp first_letters