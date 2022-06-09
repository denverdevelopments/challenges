#1  Read in each lines

#2  Break up number and base

#3  Set values for number and base, convert them fron string to integer

#3  Note: divident / divisor = quotient, remainder.

#4  Create string or array to contain quotient values and remainder, for end output.

#5  Repeat loop until quotient = 0, divide quotient by base, storing quotients.

#6  Output string/array container, last entries first (ie reversed), write to new file.

File.foreach("input.txt") do |line|
  pair = line.split
  num = pair.first.to_i
  base = pair.last.to_i

  # answer = [] # no good when num = 0
  # answer = [0] if num == 0
  answer = num == 0 ? [0] : []  #ternary for '0' case

  # remainder = num % base
    # answer << (num % base)
    # num = num / base

 ## recursion, w/o reverse

  # while num > base do
  until num < 1 do
    quotient = num % base
    answer << quotient
    num = num / base
    # remainder = rem
  end
  # answer << (num % base)
  File.write("new_out.txt", answer.reverse.join(' ')+"\n", mode: "a")
  # p answer.reverse.join(' ')
  # print answer.reverse.map {|n| p}

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
