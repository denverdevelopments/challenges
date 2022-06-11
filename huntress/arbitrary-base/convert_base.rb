#1  Read in each line

#2  Break up into number and base

#3  Set values for number and base, convert from string to integer

#3  Note: dividend / divisor = quotient, remainder.

#4  Create string or array to contain quotients & remainder, for end output.

#5  Repeat loop until quotient = 0 or rem less than base, divide quotient by
# base, storing quotients.

#6  Output string/array container, last entries first (ie reversed), write
# to new output file.


File.foreach("input.txt") do |line|
  # pair = line.split
  num = line.split.first.to_i
  base = line.split.last.to_i

  # answer = [] # no good when num = 0
  # answer = [0] if num == 0
  answer = num == 0 ? [0] : []  #ternary for '0' case

  # while num > 1 do
  until num < 1 do
    # quotient = num % base
    # answer << quotient
    answer << (num % base)
    num = num / base
  end
  # answer << (num % base)
  File.write("new_output.txt", answer.reverse.join(' ')+"\n", mode: "a")

end


## try:  recursion, w/o reverse, or ?answer.reverse.map {|n| n+" "}
