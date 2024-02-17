
require 'csv'

filename = 'data.csv'

# create an empty array
data_list = []
# read the file
CSV.foreach(filename, headers: true) do |row|
  # make the rows into hashes
  data_list << row.to_h
end

puts data_list
