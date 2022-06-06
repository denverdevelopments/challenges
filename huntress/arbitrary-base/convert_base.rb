#1  Read in each lines

#2  Check if is remainder

File.foreach("input.txt") do |line|
  pair = line.split
  num = pair.first.to_i
  base = pair.last.to_i
  print remainder = num % base
  # until remainder < base do
  #   remainder = remainder / base
    p remainder
  # end
  # p \n

end

#1.  Read in each line
# File.foreach("input.txt") { |line| p line.split }

#2.  Find space separators, breakup each indiv. booleans
# File.each do |line|

# File.foreach("input.txt") do |line|
#   all_booleans = line.splice(" ")
#   # all_booleans = line.split
#   total = all_booleans.size
#   actual = all_booleans.count("true")
#   if actual > 0 && actual < total
#     p true
#   else
#     p false
#   end
# end

#3.
