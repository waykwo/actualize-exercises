# QUESTION 1
# Write code to store a number in a variable.
# Then write a condition that 
# prints -1 if the number is less than 10, 
# prints 1 if the number is greater than 10, 
# and prints 0 if the number is equal to 10.
number = 10
if number < 10
  puts -1
elsif number > 10
  puts 1
elsif number == 10
  puts 0
end


# QUESTION 2
# There are two mistakes with the code below. 
# One mistake will cause the code to crash. 
# The other mistake doesn't cause the code to crash, but it is unnecessary code. 
# Fix both mistakes.
x = 100
if x < 5
  puts 0
elsif x < 50
  puts 1
elsif x < 100
  puts 2
end
# I'm having trouble seeing the intention behind the code to understand where 
# the unnecessary code is. Was the intention that the condtion that executes
# "puts 2" should just be "else" and that would make the "x < 100" unnecessary?
# Or is the problem that there is no output when x = 100? So if you had:
    # else
      # puts 2
# ...then it would output 2 if x = 100. It's difficult to know what is wrong
# without knowing what the intended output is or whether the intention was
# to set a condition where there is an output when x >= 100. I would argue 
# there is nothing wrong with the above code if it is OK that there is no 
# output when x >= 100.