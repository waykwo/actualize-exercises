# QUESTION 1
# Write a method called `check_power_level` that asks the user to enter a number.
# If the number is greater than 9000, it will print "BIG" to the screen.
# Otherwise, it will print "SMALL" to the screen.
# Then run the method to see the result.

def check_power_level(number)
  if number > 9000
    puts "BIG"
  else
    puts "SMALL"
  end
end

puts "Please enter a number:"
number = gets.chomp.to_i
check_power_level(number)
