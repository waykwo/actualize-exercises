# QUESTION 1
# Finish annotating the code below.
x = 0                                  # 1
names = ["Saron", "Majora", "Danilo"]  # 2
names[1] = "Bob"                       # 3
x = names[2]                           # 4
names[0] = x                           # 5
pp names                               # 

# 1: x is 0
# 2: x is 0, names is ["Saron", "Majora", "Danilo"]
# 3: x is 0, names is ["Saron", "Bob", "Danilo"]
# 4: x is "Danilo", names is ["Saron", "Bob", "Danilo"]
# 5: x is "Danilo", names is ["Danilo", "Bob", "Danilo"]
# 6: (prints ["Danilo", "Bob", "Danilo"])


# QUESTION 2
# Find and fix the mistakes in the code below.
items = [3, 2, 3, 2]
pp items
