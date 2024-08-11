# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Ruby has a .sort method that makes it easy to sort an array. 
# The goal of this exercise is to implement your own sort from scratch 
# (without using Ruby's #sort method!)

# The approach you will implement is called bubble sort. 
# First you examine the first two items in the array. 
# If the second is smaller than the first, you swap their positions. 
# Then you move on to the next two items and keep repeating. 
# You can see a visual of it in action here: https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif 

# Your job is to implement a bubble sort that takes an array and returns a sorted array. 
# To be clear, you're not allowed to use the built in .sort method.
# Instead you'll write code to go through the array two items at a time 
# to accomplish the same thing.


array = ["6", "5", "3", "1", "8", "7", "2", "4"]
# Check if array is sorted
index = 0
index_next = 1

# while index_next <= array.length
#   if array[index] > array[index_next]
#     sorted = false
#   else
#     index += 1
#     index_next += 1
#   end
# end

while index_next < array.length
  if array[index] < array[index_next]
    sorted = true
    index += 1
    index_next += 1
  else
    sorted = false
    puts "Array is not sorted."
    break
  end
  puts "Array is already sorted."
end

# Swap first two array values
swap = array[index]
array[index] = array[index_next]
array[index_next] = swap
pp array

# Check if array[0] is larger than array[1]
while sorted == false
  if array[index] < array[index_next]
    if index_next < array.length
      index += 1
      index_next += 1
    else
      index = 0
      index_next = 1
    end
  else
    swap = array[index]
    array[index] = array[index_next]
    array[index_next] = swap
    if index_next < array.length
      index += 1
      index_next += 1
    else
      index = 0
      index_next = 1
    end
  end
  pp array, index, index_next
end
# Above doesn't work


while sorted == false
  if array[index] > array[index_next]
    swap = array[index]
    array[index] = array[index_next]
    array[index_next] = swap
  end
  if index_next < array.length - 1
    index += 1
    index_next += 1
  else
    index = 0
    index_next = 1
  end
  pp array, index, index_next
end
# The above runs infinitely because there's no condition yet to stop it.

# Add a condition for loop to stop
while sorted == false
  if array[index] > array[index_next]
    swap = array[index]
    array[index] = array[index_next]
    array[index_next] = swap
  end
  if index_next < array.length - 1
    index += 1
    index_next += 1
  else
    index = 0
    index_next = 1
  end
  pp array, index, index_next
  while index_next < array.length - 1
    if array[index] < array[index_next]
      sorted = true
      index += 1
      index_next += 1
    else
      sorted = false
      puts "Array is not sorted."
      break
    end
    puts "Array is already sorted."
  end
end
# The program thinks the array is sorted by it's not

# Debug
while sorted == false
  if array[index] > array[index_next]
    swap = array[index]
    array[index] = array[index_next]
    array[index_next] = swap
  end
  if index_next < array.length - 1
    index += 1
    index_next += 1
  else
    index = 0
    index_next = 1
  end
  pp array, index, index_next
  while index_next < array.length - 1
    if array[index] < array[index_next]
      sorted = true
      index += 1
      index_next += 1
    else
      sorted = false
      puts "Array is not sorted."
      break
    end
    puts "Array is already sorted."
  end
end
# The program thinks the array is sorted by it's not

# Test sort check again to make sure it's working
array = ["1", "2", "3", "4", "5", "6", "7", "8"]
index = 0
index_next = 1
while index_next < array.length
  if array[index] < array[index_next]
    sorted = true
    index += 1
    index_next += 1
  else
    sorted = false
  end
end
if sorted == true
  puts "Array is sorted."
else
  puts "Array is not sorted"
end

array = ["6", "5", "3", "1", "8", "7", "2", "4"]
index = 0
index_next = 1
while index_next < array.length
  if array[index] < array[index_next]
    sorted = true
    index += 1
    index_next += 1
  else
    sorted = false
  end
end
if sorted == true
  puts "Array is sorted."
else
  puts "Array is not sorted"
end
# This runs infinitely

array = ["6", "5", "3", "1", "8", "7", "2", "4"]
index = 0
index_next = 1
sorted = nil
while (sorted == nil || sorted == true) && sort_check_index_next < array.length - 1
  if array[index] < array[index_next]
    sorted = true
    index += 1
    index_next += 1
  else
    sorted = false
  end
end
if sorted == true
  puts "The array is sorted."
else
  puts "The array is not sorted."
end

array = ["1", "2", "3", "4", "5", "6", "7", "8"]
index = 0
index_next = 1
sorted = nil
while (sorted == nil || sorted == true) && sort_check_index_next < array.length - 1
  if array[index] < array[index_next]
    sorted = true
    index += 1
    index_next += 1
  else
    sorted = false
  end
end
if sorted == true
  puts "The array is sorted."
else
  puts "The array is not sorted."
end

# Combine and Debug
array = ["6", "5", "3", "1", "8", "7", "2", "4"]
sorted = nil
index = 0
index_next = 1
while sorted == false || sorted == nil
  if array[index] > array[index_next]
    swap = array[index]
    array[index] = array[index_next]
    array[index_next] = swap
  end
  if index_next < array.length - 1
    index += 1
    index_next += 1
  else
    index = 0
    index_next = 1
  end
  pp array, index, index_next
  sort_check_index = 0
  sort_check_index_next = 1
  sorted = nil
  while (sorted == nil || sorted == true) && sort_check_index_next < array.length - 1
    if array[sort_check_index] < array[sort_check_index_next]
      sorted = true
      sort_check_index += 1
      sort_check_index_next += 1
    else
      sorted = false
    end
  end
  if sorted == true
    puts "The array is sorted."
  else
    puts "The array is not sorted."
  end
end
