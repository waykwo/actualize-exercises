# QUESTION 1
# Read about the Ruby begin and rescue keywords to handle exceptions:
# https://docs.ruby-lang.org/en/3.2/syntax/exceptions_rdoc.html
# Then write a program that would crash because of a division by zero error.
# Instead of crashing with a normal error message, the program should instead
# print "You cannot divide by zero" to the terminal.

def divide_two_numbers(dividend, quotient)
  begin
    divisor = dividend / quotient
    return divisor
  rescue
    puts "You cannot divide by zero"
  end
end

pp divide_two_numbers(4, 2)
