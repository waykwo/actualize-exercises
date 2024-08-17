# QUESTION 1
# The following code uses the csv Ruby library.
# First read this tutorial on the library: https://www.rubyguides.com/2018/10/parse-csv-ruby/ 
# Then write comments next to each line explaining what you think the code is doing.
require 'csv'                                               # Load csv library

def write_csv(file_path, data)                              # Create a write csv method with file path and data object as arguments
  headers = data.first.keys                                 # Declare headers
  CSV.open(                                                 # Method to create CSV file
    file_path,                                              # File path/name
    'w',                                                    # write mode
    write_headers: true,                                    # write headers into file
    headers: headers                                        # indicate that your data has headers and the values stored in headers variable for header data
  ) do |csv|                                                # setting the variable for the csv
    data.each do |row|                                      # iterate through each row of data
      csv << row.values                                     # push each row's values into csv varabile
    end
  end
end

file_path = 'data.csv'                                      # use "data.csv" as the file path
data = [                                                    # setting values for the data variable
  { name: 'John Doe', age: 30, city: 'New York' },
  { name: 'Jane Smith', age: 25, city: 'San Francisco' },
  { name: 'Bob Johnson', age: 35, city: 'Chicago' }
]
write_csv(file_path, data)                                  # execute the write method using file_path and data as arguments
