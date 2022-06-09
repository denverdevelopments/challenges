#1.  Read in each line
## File.foreach("input.txt") { |line| p line.split }

#2.  Find space as separators, breakup each indiv. booleans

#3.  Find number of booleans on lines (num)

#4.  See if there are any count of 'true' values

#5.  If count greater than zero and less than number, return true

#6.  Else return false

File.foreach("input.txt") do |line|
  all_booleans = line.splice(" ")
  # all_booleans = line.split
  total = all_booleans.size
  actual = all_booleans.count("true")
  if actual > 0 && actual < total
    p true
    # File.write("new_output.txt", "#{true}"+"\n", mode: "a")
  else
    p false
    # File.write("new_output.txt", "#{false}"+"\n", mode: "a")
  end
end

def booleans()
  # yield
end

booleans() do
  p "Hello World"
end
