# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

### 03-loops5.md

# 1. Use a nested loop to convert an array of number pairs into a single flattened array.
# For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].
array = [[1, 3], [8, 9], [2, 16]]
flattened = []
for i in 0..array.length - 1
  for j in 0..array[i].length - 1
    flattened << array[i][j]
  end
end
pp flattened

# Were you able to easily solve the problem from memory?
#   I had no trouble remembering the syntax. I made the mistake of setting my 
#   for loops to run 1 fewer times than the length of the array
# If so, describe the next skill you will start to practice tomorrow.
#   I'm going to keep practising loops
# If not, describe the part you got stuck on that requires more practice.

