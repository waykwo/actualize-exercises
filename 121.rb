# QUESTION 1
# Write example code to demonstrate three string methods you've never 
# worked with before from the Ruby documentation. 
# Write a comment for each method describing how it works in your own words.
puts "hEllo".capitalize # returns string to which method was applied with first 
                        # letter capitalized and rest of the characters in lowercase
puts "hello".delete "l" # returns string to which method was applied but 
                        # removing the characters that were specified after the 
                        # method; returns "hello" without the "l"s
puts "hello".empty? # returns whether the string passed into method is empty 
                    # (as true or false)

# QUESTION 2
# Write example code that crashes using an integer method from the Ruby documentation. 
# Write a comment describing the error message in your own words.
puts "hello".even? # if integer is passed into this method, it would return 
            # true if integer is even and false if not. Passing a string into 
            # method generates error.