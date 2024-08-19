# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Given an integer, write a method to return its roman numeral representation.
# (1 is I, 2 is II, 3 is III, 4 is IV, 5 is V, 6 is VI, 7 is VII, etc.)
# (You can see an example of all the rules here: https://byjus.com/maths/roman-numerals/#chart)


# Create a hash of the base roman numerals
base_symbols = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}

# As a test, lookup a base roman numeral using an integer
integer = 50
key = base_symbols.select {|key, value| value == integer}.keys
pp key[0].to_s

# Convert integer into string and then use split method to convert to array of individual letters
pp integer.to_s
pp integer.to_s.split(//)
int_array = integer.to_s.split(//)
# Handle array.length == 2 conditions
if int_array.length == 2
  if int_array[0].to_i < 4
    pp int_array[0].to_i
  end
end

# As a test, compose a roman numeral for an integer that is not a base roman symbol
integer = 30
pp integer.digits.length
if integer.digits.length == 2
  if integer[0] < 4
    tens = integer / 10
    pp "X" * tens
  end
end


# Create a set of conditions based on these rules:
# Rules
# If one or more symbols are placed after another letter of greater value, add that amount.
# If a symbol is placed before another letter of greater value, subtract that amount.
# The symbols V, L, and D are never subtracted, as they are not written before a greater value symbol.
# The symbol I can be subtracted from V and X only and symbol X can be subtracted from symbols L, M and C only.


# Maybe you create multiple hashes (1 to 8, 10 to 18)... not sure how to best break it down


# As a test, convert these integers to roman numerals:
# [900, 1000, 1300, 1400, 1500, 1800, 1900, 3000]


# Use .remainder method to get remainder

# Maybe use .truncate method to breakdown to base 1000, base 100, base 10

# # Ask user for an integer
# puts "Please enter an integer:" 
# integer = gets.chomp

# # If integer > 3999
# if integer > 3999
#   puts "This converter only works with numbers under 4000. Please enter a number under 4000:"
#   integer = gets.chomp
# end


# Solve for the largest base (base 1000, 100, 10, remainder) until remainder is 0
integer = 3324
remainder = integer
pp remainder
pp 3324.remainder(1000)
pp 324.remainder(1000)
pp 3324 - 3324.remainder(1000)
pp 800.remainder(500)
pp 650.remainder(500)
pp 350.remainder(100)
pp 3000.floor()
pp 324.remainder(100)

remainder = 324
pp remainder
pp (remainder - remainder.remainder(100)) / 100
pp remainder.remainder(3 * 100)

integer = 3324
remainder = integer
while remainder > 1000
  if integer > 1000
    thousands = (integer - integer.remainder(1000)) / 1000
    pp thousands
    thousands_rom = "M" * thousands
    pp thousands_rom
    remainder = integer.remainder(1000)
    pp remainder
  end
  remainder = 0
end

integer = 3399
remainder = integer
while remainder > 0
  if integer >= 1000
    thousands = (integer - integer.remainder(1000)) / 1000
    pp thousands
    thousands_rom = "M" * thousands
    pp thousands_rom
    remainder = integer.remainder(1000)
    pp remainder
  elsif integer >= 900
    hundreds_rom = "CM"
    pp hundreds_rom
    remainder = integer.remainder(900)
  elsif integer >= 500
    hundreds_rom = "D"
    pp hundreds_rom
    remainder = integer.remainder(500)
    pp remainder
    if remainder >= 400
      hundreds_rom = "D" + hundreds_rom
      pp hundreds_rom
      remainder = remainder.remainder(400)
      pp remainder
    elsif remainder >= 100
      hundreds = (remainder - remainder.remainder(100)) / 100
      hundreds_rom += ("D" * hundreds)
      pp hundreds_rom
      remainder = remainder.remainder(100)
      pp remainder
    end
  elsif integer >= 100
    hundreds = (integer - integer.remainder(100)) / 100
    hundreds_rom = "C" * hundreds
    pp hundreds_rom
    remainder = remainder.remainder(100)
    pp remainder
  elsif integer >= 90
    hundreds_rom = "XC"
    pp hundreds_rom
    remainder = integer.remainder(90)
  elsif integer >= 50
    tens_rom = "L"
    remainder = remainder.remainder(50)
    if remainder >= 40
      tens_rom = "X" + tens_rom
      pp tens_rom
    elsif remainder >= 10
      tens = (integer - integer.remainder(10)) / 10
      tens_rom += ("X" * tens)
      pp tens_rom
      remainder = remainder.remainder(10)
      pp remainder
    end
  elsif integer >= 10
    tens = (integer - integer.remainder(10)) / 10
    tens_rom = "X" * tens
    pp tens_rom
    remainder = remainder.remainder(10)
    pp remainder
  elsif integer >= 9
    hundreds_rom = "IX"
    pp hundreds_rom
    remainder = integer.remainder(9)
    pp remainder
  elsif integer >= 5
    ones_rom = "V"
    remainder = remainder.remainder(5)
    pp ones_rom
    pp remainder
  elsif integer >= 1
    if integer == 4
      ones_rom = "IV"
      pp ones_rom
      remainder = remainder.remainder(4)
      pp remainder
    elsif integer > 1
      ones_rom = "I" * integer
      pp ones_rom
      remainder = remainder.remainder(1)
      pp remainder
    end
  end
  integer = remainder
  pp integer
  puts thousands_rom.to_s + hundreds_rom.to_s + tens_rom.to_s + ones_rom.to_s
end
# The above doesn't work in all tests and it's getting difficult to debug
# because of how disorganized the code is


# This still doesn't work in 100% of cases. I am still debugging but I've 
# worked on it for many hours and need to move on and come back to it.
def convert_thousands()
  if $integer >= 4000
    puts "This program cannot display roman numerals above 4000."
  elsif $integer >= 1000
    thousands = ($integer - $integer.remainder(1000)) / 1000
    pp thousands
    thousands_rom = "M" * thousands
    $roman_symbols << thousands_rom
    pp thousands_rom
    $remainder = $integer.remainder(1000)
    pp $remainder
  end
end

def convert_hundreds()
  if $integer >= 500
    hundreds_rom = "D"
    print hundreds_rom
    $remainder = $integer.remainder(500)
    pp $remainder
    pp $roman_symbols
    if $remainder >= 400
      hundreds_rom = "CM"
      $roman_symbols << hundreds_rom
      pp hundreds_rom
      $remainder = $integer.remainder(400)
      pp $remainder
      pp $roman_symbols
    else
      $roman_symbols << hundreds_rom
      hundreds = ($remainder - $remainder.remainder(100)) / 100
      hundreds_rom += ("C" * hundreds)
      $roman_symbols << hundreds_rom
      pp hundreds_rom
      $remainder = $remainder.remainder(hundreds * 100)
      pp $remainder
      pp $roman_symbols
    end
  elsif $integer >= 400
    hundreds_rom = "CD"
    $roman_symbols << hundreds_rom
    pp hundreds_rom
    $remainder = $integer.remainder(400)
    pp $remainder
    pp $roman_symbols
  elsif $integer >= 100
    hundreds = ($integer - $integer.remainder(100)) / 100
    hundreds_rom = "C" * hundreds
    $roman_symbols << hundreds_rom
    pp hundreds_rom
    $remainder = $remainder.remainder(100)
    pp $remainder
    pp $roman_symbols
  end
end

def convert_tens()
  if $integer >= 50
    tens_rom = "L"
    pp tens_rom
    $remainder = $integer.remainder(50)
    pp $remainder
    pp $roman_symbols
    if $remainder >= 40
      tens_rom = "XC"
      $roman_symbols << tens_rom
      pp tens_rom
      $remainder = $integer.remainder(40)
      pp $remainder
      pp $roman_symbols
    else
      $roman_symbols << tens_rom
      tens = ($remainder - $remainder.remainder(10)) / 10
      tens_rom += ("X" * tens)
      $roman_symbols << tens_rom
      pp tens_rom
      $remainder = $remainder.remainder(tens * 10)
      pp $remainder
      pp $roman_symbols
    end
  elsif $integer >= 40
    tens_rom = "XL"
    $roman_symbols << tens_rom
    pp tens_rom
    $remainder = $integer.remainder(40)
    pp $remainder
    pp $roman_symbols
  elsif $integer >= 10
    tens = ($integer - $integer.remainder(10)) / 10
    tens_rom = "X" * tens
    $roman_symbols << tens_rom
    pp tens_rom
    $remainder = $remainder.remainder(10)
    pp $remainder
    pp $roman_symbols
  end
end

def convert_ones()
  puts $integer
  if $integer == 9
    puts "integer == 9"
    ones_rom = "IX"
    $roman_symbols << ones_rom
    pp ones_rom
    $remainder = $integer.remainder(9)
    pp $remainder
    pp $roman_symbols
  elsif $integer >= 5
    puts "integer >= 5"
    ones_rom = "V"
    $roman_symbols << ones_rom
    pp ones_rom
    $remainder = $integer.remainder(5)
    pp $remainder
    pp $roman_symbols
    # if $remainder > 1
    #   ones = ($remainder - $remainder.remainder(1)) / 1
    #   ones_rom += ("I" * ones)
    #   $roman_symbols << ones_rom
    #   pp ones_rom
    #   $remainder = $remainder.remainder(ones * 1)
    #   pp $remainder
    #   pp $roman_symbols
    # end
  elsif $integer >= 4
    puts "integer >= 4"
    ones_rom = "IV"
    $roman_symbols << ones_rom
    pp ones_rom
    $remainder = $integer.remainder(4)
    pp $remainder
    pp $roman_symbols
  elsif $integer >= 1
    ones = ($integer - $integer.remainder(1)) / 1
    ones_rom = "I" * ones
    $roman_symbols << ones_rom
    pp ones_rom
    $remainder = $remainder.remainder(1)
    pp $remainder
    pp $roman_symbols
  end
end

# $integer = 3994
puts "Please enter a number under 4000 and I will convert it to roman numerals."
$integer = gets.chomp
$remainder = $integer
$roman_symbols = []
if $integer >= 1000
  convert_thousands()
end
puts $roman_symbols
$integer = $remainder
if $integer >= 100
  convert_hundreds()
end
pp $roman_symbols
$integer = $remainder
if $integer >= 10
  convert_tens()
end
pp $roman_symbols
$integer = $remainder
if $integer > 1
  convert_ones
end
pp $roman_symbols
$integer = $remainder

puts $roman_symbols.join()



### Final solution
values_and_symbols = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

puts "Please enter an integer:" 
integer = gets.chomp.to_i
roman_symbol = ""
remainder = 0
values_and_symbols.each do |key, value|
  if integer >= key
    multiple = (integer - integer.remainder(key)) / key
    roman_symbol << value * multiple
    remainder = integer.remainder(key)
    integer = remainder
  end
end
pp roman_symbol, remainder
