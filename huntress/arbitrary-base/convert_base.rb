#1  Read in each lines

#2  Check if is remainder

File.foreach("input.txt") do |line|
  pair = line.split
  num = pair.first.to_i
  base = pair.last.to_i
    # if num == 0
    #   File.write("newput.txt", answer.reverse.join(' ')+"\n", mode: "a")
    #   return
    # end
  # answer = []
  answer = num == 0 ? [0] : []  #ternary

  # answer = ""
  # remainder = num % base
    # answer << (num % base)
    # num = num / base
  # answer = [0] if num == 0

 ## recursion, w/o reverse

  # while num > base do
  until num < 1 do
    rem = num % base
    answer << rem
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
