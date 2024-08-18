# QUESTION 1
# Write a method that takes in an array of strings and returns an array of the small strings
# where the length of each string is 4 or fewer letters.
# Then run the method and print the result.

def get_small_strings(array)
  return array.select {|item| item.length <= 4}
end

items = %w(chair pencil book)
short_item_names = get_small_strings(items)
pp short_item_names
