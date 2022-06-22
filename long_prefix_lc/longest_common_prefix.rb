# @param {String[]} strs
# @return {String}

## del2 = s.scan(/IV/).length
# [x,y].min { |x,y| x.size <=> y.size }
# str[1..-1]

def longest_common_prefix(strs)
  short = strs.min_by(&:length)
  short.slice!(0)

end


#1.  Find shortest string
    # by str min length

#2.  Check if first letter is same in other 2 words

#3.  If first is true, check first two letters

#4.  Repeat until false
  # When different, return to previous string

#5.  Stop after last array entry, return total
