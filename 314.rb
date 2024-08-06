# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Ancay ouyay igurefay histay neoay utoay?
# Pig Latin is a very sophisticated language in which 
# each English word is converted as follows: 
# The first letter of each word is removed from the beginning and added to the end. 
# Then, the letters 'ay' are added to the very end of the word.
# For example: hello = ellohay, pingpong = ingpongpay, marmalade = armalademay, etc.
# Write a program that asks the user to enter a single word 
# and prints out the Pig Latin version of that word.


# Prompt the user for a word and store the word in a variable
# Convert the word into an array of its individual letters
# Drop the first letter and store into a variable first_letter
# Append first_letter to the end of the array
# Append "ay" to the end of the array
# Convert the array into a string


# Prompt the user for a word and store the word in a variable

puts "Please enter a word and I will convert it to Pig Latin:"
word = gets.chomp
# puts word


# Convert the word into an array of its individual letters

# pp word.split(//)
letters_of_word = word.split(//)
# pp letters_of_word


# Drop the first letter and store into a variable first_letter
# Convert the dropped letter into lower case

# pp letters_of_word.shift
# pp letters_of_word
first_letter = letters_of_word.shift.downcase


# Append first_letter to the end of the array

letters_of_word << first_letter
# pp letters_of_word


# Append "ay" to the end of the array

letters_of_word << "ay"
# pp letters_of_word


# Convert the array into a string

puts "Your word converted to Pig Latin is: " + letters_of_word.join