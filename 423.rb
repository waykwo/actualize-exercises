# QUESTION 1
# The following code uses the faker Ruby library.
# First read the library documentation: https://github.com/faker-ruby/faker 
# Then write comments next to each line explaining what you think the code is doing.
require 'faker'                              # load required files for faker library

fake_data = []                               # create empty array to store faker data
100.times do                                 # Loop that repeats 100 times
  name = Faker::Name.name                    # Use faker to create a name and store it in variable name
  email = Faker::Internet.email(name: name)  # Use faker to create email address and store it in variable email
  fake_data << { name: name, email: email }  # Shovel/push name and email data into fake_data array
end

fake_data.each do |item|                     # Iterate through each item in fake_data array
  puts "Fake Name: #{item[:name]}"           # prints name, email, and line separator
  puts "Fake Email: #{item[:email]}"
  puts "---"
end
