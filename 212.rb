# QUESTION 1
# Write code to store a number using a variable, then a string using a different variable.
# Then add the two variables together (by converting the number to a string) and 
# store the result in a third variable. Finally, print out the third variable.
a = 5
b = "5"
c = a.to_s + b
puts c


# QUESTION 2
# The code below has a mistake in it. Run the code to see the error message,
# then explain what the error message means and what would need to change to fix it.
x = 10
puts x + y # y had not yet been defined before the puts statement, which references y
y = x # This line needs to come before the puts statement




# x = 10
# puts x + y
# y = x