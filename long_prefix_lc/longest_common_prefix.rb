# @param {String[]} strs
# @return {String}

## del2 = s.scan(/IV/).length
# [x,y].min { |x,y| x.size <=> y.size }
# str[1..-1]

def longest_common_prefix(strs)
  # short = strs.min_by(&:length)
  # while short.slice!(0) == strs[1].first
  ltr = 0
  out = ''
  while strs.first[ltr] == strs.first[ltr] && strs.first[ltr] == strs.last[ltr]
    out += strs.first[ltr]
    ltr += 1
  end
  out 
end


#1.  Find shortest string
    # by str min length

#2.  Check if first letter is same in other 2 words

#3.  If first is true, check first two letters

#4.  Repeat until false
  # When different, return to previous string

#5.  Stop after last array entry, return total
