# @param {String} s
# @return {Boolean}

def is_valid(s)
  return false if s.size % 2 == 1

end


# s.size
# s.strip
# s..gsub(/\s+/, "")
# s.delete(" ")
# "()[]{}"
# "hello".index(?e)              #=> 1
# "hello".index(/[aeiou]/, -3)   #=> 4

#1.  Must have even number of characters
    # by str.size

#2.  Find innermost bracket, by finding first end bracket
  # search string for ')]}',  str.index(/[)]}]/)

#3.  If first is true, check first two letters

#4.  Repeat until false
  # When different, return to previous string

#5.  Stop after last array entry, return total
