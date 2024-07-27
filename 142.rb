# QUESTION 1
# Write a program that starts with an array of strings, 
# then prints out each string on separate lines using a while loop.
strings = ["one", "two", "three"]
index = 0
while index < strings.length
  string = strings[index]
  puts string
  index = index + 1
end

# QUESTION 2
# Write a program that starts with an array of numbers, 
# then prints out each number times 3 using a while loop.
numbers = [16, 24, 32]
index = 0
while index < numbers.length
  number = numbers[index]
  puts number * 3
  index = index + 1
end
