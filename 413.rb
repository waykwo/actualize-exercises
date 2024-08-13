# QUESTION 1
# The following code uses the geocoder Ruby library.
# First read the library documentation: https://github.com/alexreisner/geocoder 
# Then write comments next to each line explaining what you think the code is doing.
require "geocoder"                                   # Load geocoder library files

addresses = [                                        # Declare a list of addresses in an array
  "1600 Amphitheatre Parkway, Mountain View, CA",
  "1 Infinite Loop, Cupertino, CA",
  "350 5th Ave, New York, NY",
]

addresses.each do |address|                          # Each loop to iterate through each item in addresses
  result = Geocoder.search(address).first            # Search address using Geocoder and assigning result to result variable; not sure what ".first" does.
  if result                                          # if result is not empty
    latitude = result.latitude                       # Assign the value of latitude from the Geocoder lookup to the variable latitude
    longitude = result.longitude                     # Assign the value of longitude from the Geocoder lookup to the variable longitude
    
    puts "Address: #{address}"                       # Prints out the text along with the variable values
    puts "Latitude: #{latitude}"
    puts "Longitude: #{longitude}"
    puts "---"
  else
    puts "Unable to geocode address: #{address}"     # prints the string shown if the variable "result" is empty
  end
end
