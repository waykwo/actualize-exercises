# QUESTION 1
# In this code, the variable z is printed out on lines 4 and 6. 
# Predict what will print out to the terminal, then run the code to see if you were right. 
# Explain in your own words exactly why those values were printed to the terminal.
x = 40
y = 3
z = x + y
puts z
x = 60
puts z
# The value of z was defined on line 8 (line 4 without the comments). By 
# declaring a new value for x in the next line, it does not recalculate or 
# redefine z. z remains the same value, which is 43 both times it was printed.


# QUESTION 2
# Write comments for the remaining lines to describe in your own words 
# what is happening line by line with the following code.
mars = 4               # Make a variable called mars and set the value to 4
mars = 2 * mars        # Change the value of the variable mars and set the new value to original value of mars, multiplied by 2
pluto = 7              # Make a variable called pluto and set the value to 7
mars = mars - pluto    # Change the value of the variable mars and set the new value to 1 (it's the previous value of mars on line 20, which is 8, minus the value of pluto, which is 1)
pluto = pluto + mars   # Change the value of pluto to 8, which is the previous value of pluto (7, set on line 21) + the value of mars (1, set on line 22)
puts mars              # Prints the current value of mars (set on line 22)
puts pluto             # Prints the current value of pluto (set on line 23)
