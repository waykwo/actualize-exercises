# QUESTION 1
# Write a method that takes in a string and a number n and returns the string repeated n times.
# Then run the method and print the result.

def return_string_n_times(string, times)
  return string * times.to_i
end

result = return_string_n_times("try_me", 5)
pp result
