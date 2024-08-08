# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Have the user enter 10 words, and allow for duplicate words. 
# After the user is done, the program will tell the user 
# which word was entered the most frequently.
# For example, if the user enters: 
#   apple, banana, orange, pear, apple, pear, apple, squash, apple, pear
# The program will say: "apple was your most common word"
# (That's because apple appeared in the user's list 4 times, more than any other word.)


# Ask user for 10 words and store the words in an array
words = []
puts "You will be asked for ten words. Enter some duplicates and I'll tell you which words were entered most frequently."
10.times do
  puts "Please enter a word."
  words << gets.chomp
end
pp words

# Create an array to store hashes (key: word; value: count of each word)
word_count = []

# For each word in the words array, check whether it already exists in word_count
words.each do |word|
  pp word_count.include?(word)
end

# As a test, create another test array with hashes of words as key and counts as values
test_array = [{word: "one", count: 1}, {word: "two", count: 1}, {word: "three", count: 5}]
pp test_array

# As a test, check whether one, two, and three can be found in the keys of the hashes
test_words = ["one", "two", "three"]
test_words.each do |test_word|
  test_array.each do |test_array_item|
    pp test_array_item[:word].include?(test_word)
  end
end

# Get all the unique words and push them to the word_count array with values of 1


# Get the remaining non-unique words and count them


# As test, create another test_words array with some duplicate words. For each 
# word in test_words, get the unique words
test_words_2 = ["one", "two", "three", "one", "two"]
test_words_2_uniq = test_words_2.uniq
pp test_words_2_uniq

# For each of the unique words, count the number of times word appeared in the words array
test_words_2_uniq.each do |test_unique_word|
  pp test_words_2.count(test_unique_word)
end

# For each of the unique words, push the word into the test_word_count array as 
# a value for word: and the count as a value for coutn:
test_word_count = []
test_words_2_uniq.each do |test_unique_word|
  count = test_words_2.count(test_unique_word)
  test_word_count << {word: test_unique_word, count: count}
end
pp test_word_count

# Test .any? method to see if you can check for counts in test_word_count greater than 1
pp test_word_count.any? {|item| item[:count] > 1}

# See if you can get the item with the largest count
# pp test_word_count.select {|item| item[:count].max}
# This doesn't work

# Get the largest value for count by sorting the array
pp test_word_count.sort_by! {|item| item[:count].size}


puts "=== Test Phase 2 ==="

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

# Ask user for 10 words and store the words in an array
words = []
puts "You will be asked for ten words. Enter some duplicates and I'll tell you which words were entered most frequently."
10.times do
  puts "Please enter a word."
  words << gets.chomp
end

# Create an array to store hashes (key: word; value: count of each word)
word_count = []
words.uniq do |unique_word|
  count = words.count(unique_word)
  word_count << {word: unique_word, count: count}
end

# If there are any coutns greater than 1, sort the array by count
if word_count.any? {|item| item[:count] > 1}
  word_count = word_count.uniq.sort_by! {|item| item[:count].size}
end
# pp word_count
# NOTE: I tested this again and no matter what I do when I sort, it sorts the 
# hash by word, not by the count. So the statement below doesn't technically
# work. I'm stuck on how to sort by the count. I might have to put the counts 
# into its own array and then try to lookup the word by the highest count.

# Shovel the counts into another array
counts = []
word_count.each do |item|
  counts << item[:count]
end
pp counts.max

# Lookup the word by highest count


puts "#{word_count[0][:word]} was your most common word"

# What if there's a tie?
