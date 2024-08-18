# QUESTION 1
# The following code uses the sqlite3 Ruby library.
# First read the library documentation: https://github.com/sparklemotion/sqlite3-ruby 
# Then write comments next to each line explaining what you think the code is doing.
require 'sqlite3'                                                                  # load sqlite3 library

db = SQLite3::Database.open 'test.db'                                              # open database and assign to variable db
db.results_as_hash = true                                                          # return results as hash instead of the default (arrays)
db.execute "CREATE TABLE IF NOT EXISTS images(path TEXT, thumbs_up INT)"           # execute sql command; in this case, create table if images table doesn't already exist

image_path = 'image1.png'                                                          # store path of image in variable
results = db.query "SELECT path, thumbs_up FROM images WHERE path=?", image_path   # SQL query to get "path" and "thumbs_up" columns from the images table, filtered by path column value equals the image_path value

first_result = results.next                                                        # obtain next row from query results and assign to variable first_result
if first_result                                                                    # if first_result has data
  puts first_result['thumb_up']                                                    # print the thumb_up column value - Is this a trick question? We fetched the "thumbs_up" column, not the "thumb_up" column
else
  puts 'No results found.'                                                         # if no results, print "No results found."
end
