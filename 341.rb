# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.
 
# I wanted to improve on my answer from 334.rb
# QUESTION 1
# Have the user enter 10 words, and allow for duplicate words. 
# After the user is done, the program will tell the user 
# which word was entered the most frequently.
# For example, if the user enters: 
#   apple, banana, orange, pear, apple, pear, apple, squash, apple, pear
# The program will say: "apple was your most common word"
# (That's because apple appeared in the user's list 4 times, more than any other word.)

# I found multiple ways to sort but could not sort by the count of each word; 
# it would only sort by the word itself. I thought I had it working but didn't
# notice that it was putting apple first because it came first alphabetically, 
# not because it had the highest count.

# I commented out the prompt for 10 words so I could test more easily. And then 
# I also solved the problem for a tie situation.

# Ask user for 10 words and store the words in an array
# words = []
# puts "You will be asked for ten words. Enter some duplicates and I'll tell you which words were entered most frequently."
# 10.times do
#   puts "Please enter a word."
#   words << gets.chomp
# end

# words = [
#   "apple",
#   "banana",
#   "orange",
#   "pear",
#   "apple",
#   "pear",
#   "apple",
#   "squash",
#   "apple",
#   "pear"
# ]
words = [
  "apple",
  "banana",
  "orange",
  "pear",
  "apple",
  "pear",
  "apple",
  "pear",
  "apple",
  "pear"
]

# Create an array to store hashes (key: word; value: count of each word)
word_count = []
words.uniq do |unique_word|
  count = words.count(unique_word)
  word_count << {word: unique_word, count: count}
end

# If there are any coutns greater than 1, sort the array by count
if word_count.any? {|item| item[:count] > 1}
  # word_count = word_count.uniq.sort_by! {|item| item[:count].size}
  word_count = word_count.uniq.sort_by {|word| word[:zip]}
end
# pp word_count

# Shovel the counts into another array
counts = []
word_count.each do |item|
  counts << item[:count]
end
# pp counts.max

# Lookup the word by highest count
highest = word_count.select {|hash| hash[:count] == counts.max}
# pp highest
# pp highest.count

# in case of a tie
ties = []
if highest.count > 1
  highest.each do |tie|
    ties << tie[:word]
  end  
end
# pp ties

if highest.count > 1
  puts "These were tied for your most common words: #{ties.join(", ")}"
else
  puts "#{highest[0][:word]} was your most common word"
end


# Were you able to easily solve the problem from memory?
#   No, I looked for appropriate methods from rubyapi.org to test
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


