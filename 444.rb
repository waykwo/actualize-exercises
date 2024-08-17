# QUESTION 1
# Read about the Ruby select method: https://www.rubyguides.com/2019/04/ruby-select-method/ 
# Then write a program that uses the select method with an array of strings 
# to create a new array with only the strings that start with the letter "a".

def start_with_a(array)
  return array.select! {|item| item.start_with? "a"}
end

fruits = %w(apple orange banana)
a_fruits = start_with_a(fruits)
pp a_fruits