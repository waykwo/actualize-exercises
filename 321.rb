# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# 2. Start with an array of strings and combine them all into a single string.
# For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".
sports = ["volleyball", "basketball", "badminton"]
pp sports.join("")

# Using while loop
sports = ["volleyball", "basketball", "badminton"]
index = 0
string = ""
while index < sports.length
  string << sports[index]
  index = index + 1
end
pp string

# Were you able to easily solve the problem from memory?
#   I was easily able to solve it using the join method but I wasn't sure if 
#   that's what you were looking for. It did not come to me automatically to 
#   start with an empty string and to keep appending to it using a loop.

# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#   I might experiement with the reduce method a bit more. After looking up 
#   documentation, i was able to figure out the answer using the reduce method 
#   but it wasn't the same answer provided so I don't fully understand why and
#   the difference between both answers.

# My answer
sports = ["volleyball", "basketball", "badminton"]
joined = sports.reduce {|sport, joined| sport + joined}
pp joined

# Provided answer
sports = ["volleyball", "basketball", "badminton"]
word = sports.reduce("") { |word, sport| word + sport }
p word