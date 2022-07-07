# @param {String} s
# @return {Boolean}

def is_valid(s)
  return false if s.size % 2 == 1
  until false # or nil
    ind = [s.index(']'),s.index(/[)}]/)].min
    case s[ind]
    when ')'
      return false if s[ind-1] != "("
      s.delete("()")
    when ']'
      return false if s[ind-1] != "["
      s.delete("[]")
    else
      return false if s[ind-1] != "{"
      s.delete("{}")
    end
    return true if s == nil || s == ""
  end
end


# s.size
# s.strip
# s..gsub(/\s+/, "")
# s.delete(" ")
# "()[]{}"
# "hello".index(?e)              #=> 1
# "hello".index(/[aeiou]/, -3)   #=> 4
# s.index(/[)]}]/)


#1.  Must have even number of characters
    # by str.size

#2.  Find innermost bracket, by finding first end bracket
  # search string for ')]}',  str.index(/[)]}]/)
  # smallest index for a closing bracket, or biggest index of open

#3.  OR find first close bracket index, check if matching is right next

#4.  If legal pair is found, delete from str.  Repeat

#5.
