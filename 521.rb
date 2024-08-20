# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 9. Use nested loops with an array of numbers to compute a new array containing 
# the first two numbers (from the original array) that add up to the number 10. 
# If there are no two numbers that add up to 10, return false.
# For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].
originals = [2, 5, 3, 1, 0, 7, 11]
sum_10 = []
originals.each do |original|
  seconds = originals.reject {|number| number == original}
  seconds.each do |second|
    if original + second == 10 && sum_10.length < 2
      sum_10 = [original, second]
    end
  end
end
if sum_10.length == 2
  pp sum_10
else
  puts false
end

# Were you able to easily solve the problem from memory?
#   No, the solution didn't come right away.
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#   Keep on this track.


