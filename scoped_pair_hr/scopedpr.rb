#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'scope_congruent' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts STRING_ARRAY input_str as parameter.

# Code is based cases where input_str is an array of strings, where the number
# on the first line is the number of strings in the array.

def scope_congruent(input_str)
  # if input_str.size < 1 || input_str % 2 == 1
  #   return "Invalid input array"
  # else
  #   pairs = input_str.size / 2
  #   output  = []
  #   def scope_rank(sub_str)
  #     # method to count how many times sub_str is nested in {}
  #   end
  #   pairs.times do |i|
  #       si = 1 + (i-1)*2
  #       sk = si + 1
  #       # fix include?(/[!@#$%^&*]/) for non-letter characters
  #       if input_str[si].include?('$') || input_str[sk].include?('$')
  #           output.push(-1)
  #       elsif scope_rank(input_str[si]) == scope_rank(input_str[sk])
  #           output.push(true)
  #       else
  #           output.push(false)
  #       end
  #   end
  # end

  if input_str.size < 1 || input_str % 2 == 1
    return "Invalid input array"
  else
    pairs = input_str.size / 2
    output  = []

    pairs.times do |i|
        si = 1 + (i-1)*2
        sk = si + 1
        def scope_ranksi(sub_str)
            # method to find scope rank / count how many times sub_str is nested in {}
            # for sub_str of 'bc', 'def', 'emc'
            nsi = input_str[si].index(sub_str)
            input_str[si][0..nsi].count('{')
        end

        def scope_ranksk(sub_str)
            # method to find scope rank / count how many times sub_str is nested in {}
            # for sub_str of 'bc', 'def', 'emc'
            nsk = input_str[sk].index(sub_str)
            input_str[sk][0..nsk].count('{')
        end

        # fix include?(/[!@#$%^&*]/) for non-letter characters
        if input_str[si].include?('$') || input_str[sk].include?('$')
            output.push(-1)
        elsif scope_ranksi(input_str[si]) == scope_ranksk(input_str[sk])
            output.push(true)
        else
            output.push(false)
        end
    end
  end

  output.each do |result|
      p result
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
