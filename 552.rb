# QUESTION 1
# Write a method that takes in three strings and uses string interpolation 
# to return all three strings combined with spaces in between as a single string. 
# Then run the method and print the result.

def concat_strings(string1, string2, string3)
  return "#{string1} #{string2} #{string3}"
end

string1, string2, string3 = "foo", "bar", "baz"
mashed = concat_strings(string1, string2, string3)
pp mashed