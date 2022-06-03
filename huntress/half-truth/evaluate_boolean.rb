

File.foreach("input.txt") do |line|
  all_booleans = line.splice(" ")
  # all_booleans = line.split
  total = all_booleans.size
  actual = all_booleans.count("true")
  if actual > 0 && actual < total
    p true
  else
    p false
  end
end

#1.  Read in each line
# File.foreach("input.txt") { |line| p line.split }

#2.  Find space separators, breakup each indiv. booleans
# File.each do |line|

#3.  Find number of booleans on lines (num)

#4.  See if there are any count of 'true' values

#5.  If count greater than zero and less than number, return 'true'

#6.  Else return 'false'
