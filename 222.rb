# QUESTION 1
# Write a program that asks the user for their name.
# If their name is Martin, print "Hi Martin!" to the screen.
# Otherwise print "You're not Martin."
puts "What is your name?"
name = gets.chomp
if name == "Martin"
    puts "Hi Martin!"
else
    puts "You're not Martin."
end


# QUESTION 2
# Fix the indentation and the errors with the code below.
x = 1000
if x < 5
    puts 0
elsif x < 10
    puts 1
elsif x < 100
    puts 2
end


# x = 1000
# if x < 5
# puts 0
# else if x < 10
# puts 1
# else x < 100
# puts 2